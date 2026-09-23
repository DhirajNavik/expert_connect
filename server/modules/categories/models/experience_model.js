import mongoose from "mongoose";
import { DATABASE_MODELS } from "../../../constants/db_models.js";

const experienceSchema = new mongoose.Schema({
    experience: {
        type: String,
        required: [true, "Please enter a new experience"],
        unique: true,
        trim: true,
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

const ExperienceModel = mongoose.model(DATABASE_MODELS.EXPERIENCE, experienceSchema);

export default ExperienceModel;