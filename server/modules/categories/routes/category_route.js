import CategoryController from "../controllers/category_controller.js"
import SubCategoryController from "../controllers/sub_category_controller.js"
import express from "express";
import multer from "multer";

const upload = multer({
    storage: multer.memoryStorage(),
    limits: {
        fileSize: 5 * 1024 * 1024
    },
});

const router = express.Router();

router.route("/")
    .post(upload.single("image"), CategoryController.createCategory)
    .get(CategoryController.fetchAllCategory)

router.route("/:id/subcategories")
    .post(upload.single("image"), SubCategoryController.createSubCategory)
    .get(SubCategoryController.fetchSubCategories)

export default router;