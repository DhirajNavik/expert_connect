import json from "jsonwebtoken"
import asyncErrorHandler from "./asyn_error_handler.js"
import CustomError from "./custom_error.js"
import util from "util"
import UserModel from "../modules/auth/user_model.js"

const authenticateToken = asyncErrorHandler(async (req, res, next) => {

    const testToken = req.headers.authorization

    let token
    if (testToken && testToken.startsWith('Bearer')) {
        token = testToken.split(' ')[1];
    }
    if (!token) {
        const error = new CustomError("Unauthorized access detected", 401)
        return next(error)
    }


    const decoded = await util.promisify(json.verify)(token, process.env.SECRET_STR)

    const user = await UserModel.findById(decoded.id)
    if (!user) {
        const error = new CustomError("User not found, Please login again", 401)
        next(error)
    }

    const isPasswordChanged = await user.isPasswordChanged(decoded.iat)

    if (isPasswordChanged) {
        const error = new CustomError("Password was changed recently, Please login again", 401)
        next(error)
    }

    req.user = user;

    next()
})


const signToken = id => {
    return json.sign({ id }, process.env.SECRET_STR, {
        expiresIn: process.env.LOGIN_EXPIRES,
        algorithm: "HS256"
    })
}

// "admin","test"
const restrictRoles = (...role) => {
    // Wrapper function
    return (req, res, next) => {
        if (!role.includes(req.user.role)) {
            const error = new CustomError("You are accessing unauthorized path. Warning has been issued.", 403)
            next(error)
        }
        next()
    }
}


export default {
    authenticateToken,
    signToken,
    restrictRoles
}