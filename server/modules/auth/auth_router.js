import express from "express"
import controller from "./auth_controller.js"

const router = express.Router()

router.route("/customer").post(controller.signUpCustomer)
router.route("/expert").post(controller.signUpExpert)
router.route("/login").post(controller.login)

export default router
