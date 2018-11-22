function addRating(reviewHTML) {
  const bookings = document.querySelectorAll('.rating-booking');

  if (bookings) {
    bookings.forEach(function(item, index) {

      console.log(item.children[2-6].classList);

      const fullStars= document.querySelectorAll(".fas.fa-star");
      const number = fullStars.length
      const rating = document.getElementById('rating_score');
      const list= document.querySelectorAll(".fa-star");
      const bookingID = document.querySelector('.booking-id').innerText;
      const newRatingForm = document.getElementById(`${bookingID}`);
      item.addEventListener('mouseover', (event) => {
        const arrayOfStars = Array.from(list)

        function findIndexNumber(element) {
          return element == event.target;
        }

        const star = arrayOfStars.findIndex(findIndexNumber);

        if(star == -1) {
          list.forEach(function(item, index) {
            if(index <= number - 1){
              item.classList.add('fas');
              item.classList.remove('far');
            } else {
              item.classList.remove('fas');
              item.classList.add('far');
            }
          })
        }
        else {
          list.forEach(function(item, index) {

            if(index <= star){
              item.classList.add('fas');
              item.classList.remove('far');
            } else {
              item.classList.remove('fas');
              item.classList.add('far');
            }
          })
        }
      })
      item.addEventListener('click', (event) => {
        list.forEach(function(item, index) {
          if (event.target == item) {
            rating.value = index + 1;
            newRatingForm.submit();
          }
        })
      });
    })
  }
};

export { addRating } ;
