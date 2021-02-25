import flatpickr from "flatpickr";

const toggleDateInputs = () => {
  const startDateInput = document.getElementById("booking_start_date");
  const endDateInput = document.getElementById("booking_end_date");

  if (startDateInput && endDateInput) {
    const unavailableDates = JSON.parse(
      document.getElementById("booking-form").dataset.unavailableDates
    );
    console.log(unavailableDates);
    flatpickr(startDateInput, {
      altInput: true,
      minDate: "today",
      dateFormat: "Y-m-d",
      minuteIncrement: 30,
      disable: unavailableDates,
      onChange: function (selectedDates, selectedDate) {
        if (selectedDate === "") {
          endDateInput.disabled = true;
        }
        let minDate = selectedDates[0];
        minDate.setDate(minDate.getDate() + 1);
        endDateCalendar.set("minDate", minDate);
        endDateInput.disabled = false;
      },
    });
    const endDateCalendar = flatpickr(endDateInput, {
      altInput: true,
      dateFormat: "d-m-Y",
      minuteIncrement: 30,
      disable: unavailableDates,
    });
  }
};

export { toggleDateInputs };
