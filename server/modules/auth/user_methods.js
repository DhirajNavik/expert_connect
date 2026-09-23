import bcrypt from "bcryptjs";

export default function registerUserMethods(userSchema) {

    userSchema.methods.comparePassword = async function (pswd) {
        return await bcrypt.compare(pswd, this.password)
    }

    userSchema.methods.isPasswordChanged = async function (JWTTimeStamp) {
        if (this.passwordChangedAt) {
            const changedTimestamp = parseInt(
                this.passwordChangedAt.getTime() / 1000,
                10
            );

            return JWTTimeStamp < changedTimestamp;
        }
        return false
    }
}