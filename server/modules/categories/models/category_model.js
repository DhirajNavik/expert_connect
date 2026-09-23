import mongoose from "mongoose";
import { DATABASE_MODELS } from "../../../constants/db_models.js";

const categorySchema = new mongoose.Schema({
    name: {
        type: String,
        required: [true, "Please enter a new category"],
        unique: true,
        trim: true,
    },
    image: {
        type: String,
        default: ""
    },
    isActive: {
        type: Boolean,
        default: true
    }
}, {
    timestamps: true,
    toJSON: {
        virtuals: true,
        transform(doc, ret) {
            delete ret._id;
            delete ret.__v;
            delete ret.isActive;
            delete ret.createdAt;
            delete ret.updatedAt;
        }
    }
})

const CategoryModel = mongoose.model(DATABASE_MODELS.CATEGORY, categorySchema);

export default CategoryModel;