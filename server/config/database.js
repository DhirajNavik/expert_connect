import mongoose from "mongoose";

const connectDB = async () => {

    try {

        const conn = await mongoose.connect(process.env.CONN_STR);
        console.log(`Mongo DB connected : ${conn.connection.host}`);

    } catch (err) {
        console.error("MongoDB connection error : ", err.message);
        process.exit(1); // stop server if db fails

    }


}


export default connectDB;