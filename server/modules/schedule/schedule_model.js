import mongoose from "mongoose";
import validator from "validator";
import { DATABASE_MODELS } from "../../constants/db_models.js";
import breakSchema from "./models/break_model.js"
import customDaySchema from "./models/custom_day_model.js"
import dayOffSchema from "./models/day_off_model.js"
import weekOff from "./models/week_off_model.js"
import timeSchema from "./models/time_model.js"
import hooks from "./schedule_hooks.js"
const scheduleSchema = new mongoose.Schema({

    clientId: {
        type: mongoose.Schema.Types.ObjectId,
        ref: "Expert",
        required: [true, "Expert ID is required"],
        unique: true,
    },
    timezone: {
        type: String,
        required: [true, "Timezone is required"],
    },
    startDate: {
        type: String,
        required: [true, "Please select start date!"],
        validate: {
            validator: (value) => validator.isDate(value),
            message: "Invalid selected date",
        },
    },
    startDateUTC: {
        type: Date,
    },
    endDate: {
        type: String,
        required: [true, "Please select end date!"],
        validate: {
            validator: (value) => validator.isDate(value),
            message: "Invalid selected date",
        },
    },
    endDateUTC: Date,
    meetingDuration: {
        type: Number,
        min: [1, "Meeting duration must be greater than 0"],
        default: 30
    },
    workingHours: {
        type: timeSchema,
        required: [true, "Please select your working hours"],
    },
    weekOff,
    dayOff: {
        type: [dayOffSchema],
        default: [],
    },
    customDay: {
        type: [customDaySchema],
        default: [],
    },

    breaks: {
        type: [breakSchema],
        default: [],
    },
}, {

    timestamps: true,

    toJSON: {
        virtuals: true,
        transform(doc, ret) {
            delete ret.__v;
            delete ret._id;
            delete ret.timezone
            delete ret.startDate
            delete ret.endDate
            delete ret.createdAt
            delete ret.updatedAt

        }
    },
});

hooks(scheduleSchema);

const ScheduleModel = mongoose.model(DATABASE_MODELS.SCHEDULE, scheduleSchema);

export default ScheduleModel;
