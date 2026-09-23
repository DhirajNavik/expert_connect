import mongoose from "mongoose";
import validator from "validator"
import { UserRole } from "../../constants/roles.js";
import { DATABASE_MODELS } from "../../constants/db_models.js";
import registerUserHooks from "./user_hooks.js";
import registerUserMethods from "./user_methods.js";

const userSchema = new mongoose.Schema(
    {
        "name": {
            type: String,
            trim: true,
            required: [true, "Please enter your name."],
            minLength: [3, "Please enter a valid name."]
        },
        "email": {
            type: String,
            trim: true,
            required: [true, "Please enter a valid Email Id."],
            lowercase: true,
            validate: [validator.isEmail, "Please enter a valid Email Id."]
        },
        "phone": {
            type: String,
            required: [true, "Please enter mobile number."],
            validate: {
                validator: (value) =>
                    validator.isMobilePhone(value, ["en-IN", "ar-AE"], {
                        strictMode: true,
                    }),
                message: "Please enter a valid {VALUE} number.",
            }
        },
        "image": {
            type: String
        },
        "password": {
            type: String,
            required: [true, "Please enter a password."],
            validate: {
                validator: (value) =>
                    validator.isStrongPassword(value, {
                        minLength: 8,
                        minLowercase: 1,
                        minUppercase: 1,
                        minNumbers: 1,
                        minSymbols: 1,
                    }),
                message:
                    "Please enter a password with at least 8 characters, including an uppercase letter, a lowercase letter, a number, and a special character.",
            },
            select: false
        },
        "confirmPassword": {
            type: String,
            required: [true, "Please enter confirm password."],
            validate: {
                validator: function (value) {
                    return value === this.password
                },
                message: "Please check your password."
            },
            select: false
        },
        "passwordChangedAt": {
            type: Date,
            select: false
        },
        "role": {
            type: String,
            enum: {
                values: Object.values(UserRole),
                message: "Please select a valid user role.",
            },
            default: UserRole.CUSTOMER,
        },
        "isActive": {
            type: Boolean,
            default: true,
            select: false
        },
    }, {
    timestamps: true,

    toJSON: {
        virtuals: true,
        transform(doc, ret) {
            delete ret.password;
            delete ret.__v;
            delete ret._id;
        }
    },
    toObject: { virtuals: true }
})

registerUserHooks(userSchema);
registerUserMethods(userSchema);

userSchema.index({ email: 1 }, { unique: true })

const UserModel = mongoose.model(DATABASE_MODELS.USER, userSchema)

export default UserModel;