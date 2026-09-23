import SubCategoryModel from "../models/sub_category_model.js";
import asyncErrorHandler from "../../../utils/asyn_error_handler.js";
import { DATABASE_MODELS } from "../../../constants/db_models.js";
import uploadImage from "../../../utils/firebase_storage.js";

const createSubCategory = asyncErrorHandler(async (req, res) => {
    const {
        name,
    } = req.body

    const categoryId = req.params.id;
    
    let image = "";

    if (req.file) {
        image = await uploadImage(
            req.file,
            DATABASE_MODELS.CATEGORY,
            Date.now()
        );
    }

    const subcategory = await SubCategoryModel.create({
        categoryId, name, image
    })

    res.status(201).json({
        status: "success",
        message: "New sub category has been created.",
    })
})


const fetchSubCategories = asyncErrorHandler(async (req, res) => {
    const { id } = req.params;

    const subCategories = await SubCategoryModel.find({
        categoryId: id,
        isActive: true
    });

    res.status(200).json({
        status: "success",
        data: subCategories,
    })

});


export default {
    createSubCategory,
    fetchSubCategories
}