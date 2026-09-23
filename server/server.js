import dotenv from "dotenv"
dotenv.config({ path: "./config.env" })

import mongoDB from "./config/database.js"
import app from "./app.js"

mongoDB()

app.listen(process.env.PORT, () => {
    console.log(`Server started : ${Date.now()}`)
})