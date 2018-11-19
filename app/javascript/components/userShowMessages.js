function openMessages(event) {
  const messageForm = document.querySelector('.user-bookings-chatroom');
  const messageButton = document.querySelector('.user-bookings-message-button');
  if (messageButton) {
    messageButton.addEventListener("click", event => {
      messageForm.classList.toggle('hidden');
    })
  }
};

export { openMessages };
