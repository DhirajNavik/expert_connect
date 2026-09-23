import CustomError from "../utils/custom_error.js";

const handleValidationError = (err) => {
    const errors = Object.values(err.errors).map(el => el.message);
    return new CustomError(errors.join(" & "), 400);
};

const handleDuplicateFieldError = (err) => {

    const value = err.keyValue.name || "Data";
    
    return new CustomError(
        `${value} already exists.`,
        400
    );
};

const handleCastError = (err) => {
    const errors = `Invalid value for ${err.path} : ${err.value}`;
    return new CustomError(errors, 400);
};

const handleExpiredJWT = (err) => {
    return new CustomError("Please login again!", 401);
}

const handleJWTError = (err) => {
    return new CustomError("Invalid Login. Please login again!", 401);
}

export default (error, req, res, next) => {
    error.statusCode = error.statusCode || 500
    error.status = error.status || "error";

    if (error.name === "ValidationError") {
        error = handleValidationError(error);
    } else if (error.name === "CastError") {
        error = handleCastError(error)
    } else if (error.code === 11000) {
        error = handleDuplicateFieldError(error);
    } else if (error.name === "TokenExpiredError") {
        error = handleExpiredJWT(error);
    } else if (error.name === "JsonWebTokenError") {
        error = handleJWTError(error);
    }


    if (process.env.NODE_ENV === 'development') {
        res.status(error.statusCode).json({
            "status": error.status,
            "message": error.message,
            "stackTrace": error.stack,
            "error": error
        })
    } else if (process.env.NODE_ENV === 'production') {
        if (error.isOperational) {
            res.status(error.statusCode).json({
                "status": error.status,
                "message": error.message,
            })
        } else {
            res.status(500).json({
                "status": "error",
                "message": "Something went wrong! Please try again later",
            })
        }
    }
}
