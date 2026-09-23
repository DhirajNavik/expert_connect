import { DateTime } from "luxon";
import validator from "validator";

import ScheduleModel from "./schedule_model.js";
import CustomError from "../../utils/custom_error.js";
import asyncErrorHandler from "../../utils/asyn_error_handler.js";


const createSchedule = asyncErrorHandler(async (req, res) => {

    const {
        timezone,
        startDate,
        endDate,
        meetingDuration,
        workingHours,
        weekOff,
        dayOff,
        customDay,
        breaks,
    } = req.body

    const schedule = await ScheduleModel.create({
        clientId: req.user.id,
        timezone,
        startDate,
        endDate,
        meetingDuration,
        workingHours,
        weekOff,
        dayOff,
        customDay,
        breaks,
    })

    res.status(201).json({
        status: "success",
        message: "New schedule has been posted.",
    })

})


const findScheduleByID = asyncErrorHandler(async (req, res,next) => {

    const id = req.params.id;

    const schedule = await ScheduleModel.findOne({ "clientId": id });

    if (!schedule) {
        return next(new CustomError("User not found, Please try again later."));
    }

    res.status(200).json({
        "data": schedule,
        "status": "success"
    })
})


const mySchedule = asyncErrorHandler(async (req, res,next) => {

    const id = req.user.id;

    const schedule = await ScheduleModel.findOne({ "clientId": id });

    if (!schedule) {
        return next(new CustomError("Please create your schedule"));
    }

    res.status(200).json({
        "data": schedule,
        "status": "success"
    })
})


export default {
    createSchedule,
    findScheduleByID,
    mySchedule
}