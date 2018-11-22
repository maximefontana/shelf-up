function addRating(reviewHTML) {
  const bookings = document.querySelectorAll('.rating-booking');

  if (bookings) {
    bookings.forEach(function(booking, index) {
      const fullStars = booking.querySelectorAll(".fas.fa-star");
      const number = fullStars.length;
      const rating = booking.querySelector('#rating_score');
      const stars = booking.querySelectorAll(".fa-star");
      const newRatingForm = booking.querySelector('#new_rating');

      stars.forEach(function(star, index) {

        star.addEventListener('mouseover', (event) => {
          const arrayOfStars = Array.from(stars);

          function findIndexNumber(element) {
            return element == event.target;
          }

          const currentStar = arrayOfStars.findIndex(findIndexNumber);
          console.log(currentStar);

          if(currentStar == -1) {
            stars.forEach(function(star, index) {
              if(index <= number - 1){
                star.classList.add('fas');
                star.classList.remove('far');
              } else {
                star.classList.remove('fas');
                star.classList.add('far');
              }
            })
          }
          else {
            stars.forEach(function(star, index) {
              if(index <= currentStar){
                star.classList.add('fas');
                star.classList.remove('far');
              } else {
                star.classList.remove('fas');
                star.classList.add('far');
              }
            })
          }
        })


        star.addEventListener('click', (event) => {
          stars.forEach(function(item, index) {
            if (event.target == item) {
              rating.value = index + 1;
              newRatingForm.submit();
            }
          })
        });
      })
    })
  }
};

export { addRating } ;
