import express from "express";
import controller from "./schedule_controller.js";

const router = express.Router();

router.route("/").post(controller.createSchedule).get(controller.mySchedule)
router.route("/:id/view").get(controller.findScheduleByID)

export default router;