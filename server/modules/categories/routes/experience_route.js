import express from "express";
import controller from "../controllers/experience_controller.js";

const router = express.Router();

router.route("/")
    .post(controller.createExperiences)
    .get(controller.fetchAllExperiences)

export default router;