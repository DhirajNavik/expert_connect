import nodemailer from "nodemailer";


const transport = (env) => nodemailer.createTransport({
    service: "gmail",
    auth: {
        user: env.EMAIL,
        pass: env.EMAIL_PASSWORD
    }
});



const sendEmail = async (option) => {

    const mailOptions = {
        from: process.env.EMAIL,
        to: option.email,
        subject: option.subject,
        text: option.message
    }

    await transport(process.env).sendMail(mailOptions, (error, info) => {
        if (error) {
            return console.log(error);
        }
        console.log("Message sent: %s", info.messageId);
    });
}


export default {
    sendEmail
}