import mongoose from "mongoose";
import validator from "validator";

const dayOffSchema = new mongoose.Schema(
    {
        date: {
            type: String,
            required: [true, "Please select a Day off"],
            validate: {
                validator: (value) => validator.isDate(value),
                message: "Invalid selected date",
            },
        },

        dateUTC: {
            type: Date,
        },

        reason: {
            type: String,
            trim: true,
            maxlength: [100, "Reason can't exceed 100 letters"],
        },
    },
    {
        _id: false,
        toJSON: {
            virtuals: true,
            transform(doc, ret) {
                delete ret.date
            }
        }
    }
);

export default dayOffSchema;