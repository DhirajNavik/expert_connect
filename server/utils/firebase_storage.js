import path from "path";
import { bucket } from "./firebase_config.js";
import CustomError from "./custom_error.js";

const uploadImage = async (file, model, id) => {

    if (!file) {
        throw new CustomError("Please select an image.", 400);
    }

    const extension = path.extname(file.originalname).toLowerCase();

    const fileName = `${model}/${id}${extension}`;

    const blob = bucket.file(fileName);

    await new Promise((resolve, reject) => {
        const blobStream = blob.createWriteStream({
            metadata: {
                contentType: file.mimetype,
            },
        });

        blobStream.on("error", (err) => {
            reject(
                new CustomError(
                    `Image upload failed: ${err.message}`,
                    500
                )
            );
        });

        blobStream.on("finish", async () => {
            try {
                await blob.makePublic();
                resolve();
            } catch (err) {
                reject(
                    new CustomError(
                        `Unable to make image public: ${err.message}`,
                        500
                    )
                );
            }
        });

        blobStream.end(file.buffer);
    });

    return `https://storage.googleapis.com/${bucket.name}/${blob.name}`;
};

export default uploadImage;