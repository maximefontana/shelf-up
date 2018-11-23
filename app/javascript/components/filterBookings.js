function filterBookings() {
  const items = document.querySelectorAll(".booking-status");
  const bookingCards = document.querySelectorAll('.booking-card');

  if (items.length > 0) {
    items.forEach((item) => {
      item.addEventListener("click", (event) => {
        event.preventDefault();
        item.classList.add("status-selected");
        item.classList.remove("not-selected");

        items.forEach((item) => {
          if (item != event.target) {
            item.classList.remove('status-selected');
          }
        })

        bookingCards.forEach((card) => {
          if (item.innerText == "All") {
            card.classList.remove('hidden');
          } else if (card.children[2].children[0].innerText.trim() == item.innerText) {
            card.classList.remove('hidden');
          } else {
            card.classList.add('hidden');
          }
        })
      })
    })
  }
};

export { filterBookings };
