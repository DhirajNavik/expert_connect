import bcrypt from "bcryptjs";

export default function registerUserHooks(userSchema) {
    userSchema.pre("save", async function () {
        if (!this.isModified("password")) return;

        const salt = await bcrypt.genSalt(10);
        this.password = await bcrypt.hash(this.password, salt);
        if (!this.isNew) {
            this.passwordChangedAt = Date.now() - 1000;
        }
        
        this.confirmPassword = undefined;
    });

    userSchema.pre("save", function () {
        if (!this.isModified("password") || this.isNew) return;
        this.passwordChangedAt = Date.now() - 1000;
    });
}