import express from "express"
import authRouter from "./modules/auth/auth_router.js"
import profileRouter from "./modules/profile/profile_router.js"
import scheduleRoute from "./modules/schedule/schedule_route.js"
import categoryRouter from "./modules/categories/routes/category_route.js"
import experienceRouter from "./modules/categories/routes/experience_route.js"
import globalErrorHandler from "./controllers/error_controller.js"
import auth from "./utils/auth.js"

const app = express();

app.use(express.json({ limit: "10kb" }))
app.set('query parser', 'extended');

app.use('/api/v1/auth', authRouter)

app.use(auth.authenticateToken)

app.use('/api/v1/user', profileRouter)
app.use("/api/v1/schedule", scheduleRoute)
app.use("/api/v1/categories", categoryRouter)
app.use("/api/v1/experiences", experienceRouter)

//Unknown Route Handler
app.all('/*path', (req, res, next) => {
    const error = new customError(`Unable to find ${req.originalUrl} url`, 404)
    next(error)
})

app.use(globalErrorHandler);

export default app