import mongoose from "mongoose";
import validator from "validator";
import timeSchema from "./time_model.js";
import breakSchema from "./break_model.js";

const customDaySchema = new mongoose.Schema({

    date: {
        type: String,
        required: [true, "Please select a Date"],
        validate: {
            validator: (value) => validator.isDate(value),
            message: "Invalid selected date",
        },
    },

    dateUTC : Date,

    workingHours: {
        type: timeSchema,
    },
    breaks: {
        type: [breakSchema],
        default: [],
    },
    reason: {
        type: String,
        trim: true,
        maxlength: [100, "Reason can't exceed 100 letters"],
    },

}, {
    _id: false,
     toJSON: {
        virtuals: true,
        transform(doc, ret) {
            delete ret.date
        }
    },
})


export default customDaySchema;