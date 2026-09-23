import { Weeks } from "../../../constants/weeks.js"

const weekOffSchema = {
    type: [String],
    enum: {
        values: Object.values(Weeks),
        message: "{VALUE} is not a valid day",
    },
    default: []
};

export default weekOffSchema;