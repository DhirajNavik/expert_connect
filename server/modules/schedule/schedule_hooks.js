import { DateTime } from "luxon";
import validator from "validator";
export default function registerScheduleHooks(schema) {
    schema.post("validate", async function () {

        if (!this.timezone) return

        this.startDateUTC = DateTime.fromISO(this.startDate, { zone: this.timezone }).toUTC().toJSDate();
        this.endDateUTC = DateTime.fromISO(this.endDate, { zone: this.timezone }).toUTC().toJSDate();
        this.workingHours.startUTC = DateTime.fromFormat(this.workingHours.start, "HH:mm", { zone: this.timezone }).toUTC().toFormat("HH:mm");
        this.workingHours.endUTC = DateTime.fromFormat(this.workingHours.end, "HH:mm", { zone: this.timezone }).toUTC().toFormat("HH:mm");

        this.dayOff.forEach((day) => {
            day.dateUTC = DateTime.fromISO(day.date, { zone: this.timezone }).toUTC().toJSDate();
        });

        this.customDay.forEach((day) => {

            day.dateUTC = DateTime.fromISO(day.date, { zone: this.timezone }).toUTC().toJSDate();
            day.workingHours.startUTC = DateTime.fromFormat(day.workingHours.start, "HH:mm", { zone: this.timezone }).toUTC().toFormat("HH:mm");
            day.workingHours.endUTC = DateTime.fromFormat(day.workingHours.end, "HH:mm", { zone: this.timezone }).toUTC().toFormat("HH:mm");
            day.breaks.forEach((day) => {
                day.time.startUTC = DateTime.fromFormat(day.time.start, "HH:mm", { zone: this.timezone }).toUTC().toFormat("HH:mm");
                day.time.endUTC = DateTime.fromFormat(day.time.end, "HH:mm", { zone: this.timezone }).toUTC().toFormat("HH:mm");
            })

        });

        this.breaks.forEach((day) => {
            day.time.startUTC = DateTime.fromFormat(day.time.start, "HH:mm", { zone: this.timezone }).toUTC().toFormat("HH:mm");
            day.time.endUTC = DateTime.fromFormat(day.time.end, "HH:mm", { zone: this.timezone }).toUTC().toFormat("HH:mm");
        })
    });

}

