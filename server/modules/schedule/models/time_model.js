import mongoose from "mongoose";
import validator from "validator";

const timeSchema = new mongoose.Schema({

    start: {
        type: String,
        required: [true, "Please select start time"],
        trim: true,
        validate: {
            validator: (value) => validator.isTime(value, { hourFormat: "hour24", mode: "default", }),
            message: "Time must be in HH:mm format"
        }
    },
    startUTC: String,
    end: {
        type: String,
        required: [true, "Please select end time"],
        trim: true,
        validate: {
            validator: (value) => validator.isTime(value, { hourFormat: "hour24", mode: "default", }),
            message: "Time must be in HH:mm format"
        }
    },
    endUTC: String
}, {
    _id: false,
    toJSON: {
        virtuals: true,
        transform(doc, ret) {
            delete ret.start
            delete ret.end
        }
    },
})

export default timeSchema;