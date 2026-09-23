import CategoryModel from "../models/category_model.js";
import asyncErrorHandler from "../../../utils/asyn_error_handler.js";
import { DATABASE_MODELS } from "../../../constants/db_models.js";
import uploadImage from "../../../utils/firebase_storage.js";

const createCategory = asyncErrorHandler(async (req, res) => {
    console.log(req.body);
    const {
        name,
    } = req.body

    let image = "";

    if (req.file) {
        image = await uploadImage(
            req.file,
            DATABASE_MODELS.CATEGORY,
            Date.now()
        );
    }

    const category = await CategoryModel.create({
        name, image
    })

    res.status(201).json({
        status: "success",
        message: "New category has been created.",
    })
})


const fetchAllCategory = asyncErrorHandler(async (req, res) => {

    const categories = await CategoryModel.find({ isActive: true });

    res.status(200).json({
        status: "success",
        data: categories,
    })

});


export default {
    createCategory,
    fetchAllCategory
}