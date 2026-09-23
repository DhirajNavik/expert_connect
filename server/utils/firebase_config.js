import dotenv from "dotenv";
dotenv.config({ path: "./config.env" });

import { initializeApp, cert } from "firebase-admin/app";
import { getStorage } from "firebase-admin/storage";
import fs from "fs";
import path from "path";

const serviceAccountPath = path.resolve(process.env.FIREBASE_SERVICE_ACCOUNT_NAME);
const serviceAccount = JSON.parse(fs.readFileSync(serviceAccountPath, "utf-8"));

initializeApp({
    credential: cert(serviceAccount),
    storageBucket: process.env.FIREBASE_STORAGE_BUCKET_NAME,
});

export const bucket = getStorage().bucket();
