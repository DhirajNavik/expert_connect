
import UserModel from "./user_model.js";
import { UserRole } from "../../constants/roles.js";
import asyncErrorHandler from "../../utils/asyn_error_handler.js";
import CustomError from "../../utils/custom_error.js";
import mailer from "../../utils/mailer.js";
import auth from "../../utils/auth.js";

const signup = async function (userData, role) {

    const {
        name,
        email,
        phone,
        password,
        confirmPassword,
    } = userData;

    const user = await UserModel.create({
        name,
        email,
        phone,
        password,
        confirmPassword,
        role,
    });

    const token = auth.signToken(user._id);

    await mailer.sendEmail({
        email: user.email,
        subject: "Verification Email",
        message: `Welcome ${user.name} to ExpertConnect`
    });

    return {
        user,
        token,
    };
}

const signUpCustomer = asyncErrorHandler(async (req, res) => {

    const { user, token } = await signup(req.body, UserRole.CUSTOMER);

    return res.status(201).json({
        status: "success",
        token,
        message: `Welcome Expert, ${user.name}`
    });

})

const signUpExpert = asyncErrorHandler(async (req, res) => {

    const { user, token } = await signup(req.body, UserRole.EXPERT);

    return res.status(201).json({
        status: "success",
        token,
        message: `Welcome Expert, ${user.name}`
    });

})


const login = asyncErrorHandler(async (req, res, next) => {

    const { email, password } = req.body;

    console.log(req.body);

    if (!email || !password) {
        return next(
            new CustomError(
                "Please provide email and password.",
                400
            )
        );
    }

    const user = await UserModel.findOne({ email }).select("+password")

    if (!user || !(await user.comparePassword(password))) {
        return next(
            new CustomError("Invalid credentials.", 401)
        );
    }

    const token = auth.signToken(user._id)

    res.status(200).json({
        "status": "success",
        token,
        role: user.role
    })

})


export default {
    signUpCustomer,
    signUpExpert,
    login
}