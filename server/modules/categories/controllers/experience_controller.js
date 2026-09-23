import ExperienceModel from "../models/experience_model.js";
import asyncErrorHandler from "../../../utils/asyn_error_handler.js";

const createExperiences = asyncErrorHandler(async (req, res) => {

    const { experience } = req.body;

    await ExperienceModel.create({
        experience
    });

    res.status(201).json({
        status: "Success",
        message: "New Experience is added"
    });
});


const fetchAllExperiences = asyncErrorHandler(async (req, res) => {

    const experiences = await ExperienceModel.find({ isActive: true });

    res.status(200).json({
        status: "success",
        data: experiences,
    })

});


export default {
    createExperiences,
    fetchAllExperiences
}