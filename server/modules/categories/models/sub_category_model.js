import mongoose from "mongoose";
import { DATABASE_MODELS } from "../../../constants/db_models.js";


const subCategorySchema = new mongoose.Schema({
    categoryId: {
        type: mongoose.Schema.Types.ObjectId,
        ref: DATABASE_MODELS.CATEGORY,
        required: [true, "Please select one category"],
    },
    name: {
        type: String,
        required: [true, "Please enter a new sub category"],
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
            delete ret.categoryId;
            delete ret.createdAt;
            delete ret.updatedAt;
        }
    }
});

subCategorySchema.index(
    { categoryId: 1, name: 1 },
    { unique: true }
);

const SubCategoryModel = mongoose.model(DATABASE_MODELS.SUBCATEGORY, subCategorySchema);

export default SubCategoryModel;