import mongoose from "mongoose";


const BookingModel = new mongoose.Schema({
    userId: {
        type: mongoose.Schema.Types.ObjectId,
        ref: "Client",
        required: [true, "Please select an expert to continue"],
        index: true,
    }
});
