import mongoose from "mongoose";
import timeSchema from "./time_model.js"

const breakSchema = new mongoose.Schema({
    time: {
        type: timeSchema,
        required: true,
    },
    reason: {
        type: String,
        required: [true, "Please enter break reason"],
        trim: true,
        maxlength: [14, "Reason can't exceed 14 charactersF"]
    }
}, {
    _id: false
})

export default breakSchema;