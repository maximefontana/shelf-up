function bookingMessages() {
  const bookingMessageForm = document.querySelector('.booking-form-message-box');
  const bookingMessageButton = document.querySelector('.booking-form-message-button');
  if (bookingMessageButton) {
    bookingMessageButton.addEventListener("click", event => {
      bookingMessageForm.classList.toggle('hidden');
    })
  }
};

export { bookingMessages };
