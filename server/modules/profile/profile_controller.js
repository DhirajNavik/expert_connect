import UserModel from "../auth/user_model.js";
import asyncErrorHandler from "../../utils/asyn_error_handler.js";
import CustomError from "../../utils/custom_error.js";
import { bucket } from "../../utils/firebase_config.js";

const profile = asyncErrorHandler(async (req, res) => {
    const id = req.user.id;
    console.log(req.user)
    const users = await UserModel.findById(id);
    return res.status(200).json({
        status: "success",
        data: users
    })
})

const editMyProfile = asyncErrorHandler(async (req, res) => {

    const file = req.file;
    const id = req.user.id

    let {
        name,
        email,
        phone,
        image,
    } = req.body;

    if (file) {

        const fileName = `${id}_${file.originalname}`
        const blob = bucket.file(fileName)

        await new Promise((resolve, reject) => {

            const blobStream = blob.createWriteStream({
                metadata: {
                    contentType: file.mimetype,
                }
            })

            blobStream.on("error", (err) => {
                reject(
                    new CustomError(
                        `Image upload failed: ${err.message}`,
                        500
                    )
                );
            })

            blobStream.on("finish", async () => {
                try {

                    await blob.makePublic();
                    image = `https://storage.googleapis.com/${bucket.name}/${blob.name}`;

                    resolve();
                } catch (err) {

                    reject(
                        new CustomError(
                            `Unable to generate image URL: ${err.message}`,
                            500
                        )
                    );
                }
            });

            blobStream.end(req.file.buffer);
        });
    }
    const updateData = {};

    if (name !== undefined) updateData.name = name;
    if (email !== undefined) updateData.email = email;
    if (phone !== undefined) updateData.phone = phone;
    if (image) updateData.image = image;

    const user = await UserModel.findByIdAndUpdate(id, updateData, { returnDocument: "after", runValidators: true })

    if (!user) {
        throw new CustomError("User not found.", 404);
    }

    return res.status(200).json({
        status: "success",
        url: user,
    });
});

export default {
    profile,
    editMyProfile
}