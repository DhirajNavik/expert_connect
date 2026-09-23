import express from "express"
import controller from "./profile_controller.js"
import multer from "multer";

const upload = multer({
    storage: multer.memoryStorage(),
    limits: {
        fileSize: 5 * 1024 * 1024
    },
});

const router = express.Router()

router.route("/profile").get(controller.profile)
router.route("/profile").patch(upload.single("image"), controller.editMyProfile)
export default router

// .patch(upload.array("images", 5), controller.profile); for multiple files

/*.patch(
    upload.fields([
        { name: "profileImage", maxCount: 1 },
        { name: "coverImage", maxCount: 1 },
    ]),
    controller.profile
);*/