function changeTabs() {
  const firstTab = document.querySelector('.tab-first');
  const secondTab = document.querySelector('.tab-second');
  const thirdTab = document.querySelector('.tab-third');
  const lastTab = document.querySelector('.tab-last');
  const personalDetails = document.querySelector('.personal-details');
  const pendingBookings = document.querySelector('.pending-bookings');
  const currentBookings = document.querySelector('.current-bookings');
  const userMessages = document.querySelector('.messages')
  const addButton = document.querySelector('.new-listing-btn');
  const cancelButton = document.querySelector('.cancel-new')


  if (firstTab) {

    // stays on the bookings tab if redirect was passed ending in #bookings
    $(document).ready(function () {
      if(window.location.href.indexOf("#bookings") > -1) {
        firstTab.classList.remove('active');
        personalDetails.classList.add('hidden');
        secondTab.classList.remove('active');
        pendingBookings.classList.add('hidden');
        thirdTab.classList.remove('active');
        userMessages.classList.add('hidden');
        lastTab.classList.add('active');
        currentBookings.classList.remove('hidden');
      }
    });

    // stays on the listings tab if redirect was passed ending in #listings
    $(document).ready(function () {
      if(window.location.href.indexOf("#listings") > -1) {
        firstTab.classList.remove('active');
        personalDetails.classList.add('hidden');
        secondTab.classList.add('active');
        pendingBookings.classList.remove('hidden');
        thirdTab.classList.remove('active');
        userMessages.classList.add('hidden');
        lastTab.classList.remove('active');
        currentBookings.classList.add('hidden');
      }
    });

    firstTab.addEventListener('click', (event) => {
      firstTab.classList.add('active');
      personalDetails.classList.remove('hidden');
      secondTab.classList.remove('active');
      pendingBookings.classList.add('hidden');
      thirdTab.classList.remove('active');
      userMessages.classList.add('hidden');
      lastTab.classList.remove('active');
      currentBookings.classList.add('hidden');

    });
    secondTab.addEventListener('click', (event) => {
      firstTab.classList.remove('active');
      personalDetails.classList.add('hidden');
      secondTab.classList.add('active');
      pendingBookings.classList.remove('hidden');
      thirdTab.classList.remove('active');
      userMessages.classList.add('hidden');
      lastTab.classList.remove('active');
      currentBookings.classList.add('hidden');

    });
    lastTab.addEventListener('click', (event) => {
      firstTab.classList.remove('active');
      personalDetails.classList.add('hidden');
      secondTab.classList.remove('active');
      pendingBookings.classList.add('hidden');
      thirdTab.classList.remove('active');
      userMessages.classList.remove('hidden');
      lastTab.classList.add('active');
      currentBookings.classList.add('hidden');

    });
    thirdTab.addEventListener('click', (event) => {
      firstTab.classList.remove('active');
      personalDetails.classList.add('hidden');
      secondTab.classList.remove('active');
      pendingBookings.classList.add('hidden');
      thirdTab.classList.add('active');
      userMessages.classList.add('hidden');
      lastTab.classList.remove('active');
      currentBookings.classList.remove('hidden');

    });
  }
};

export { changeTabs };
