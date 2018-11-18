function addRating(reviewHTML) {
  const rating = document.getElementById('rating_score');
  const stars = document.querySelector('.store-rating-show');
  const newRatingForm = document.getElementById('new_rating');
  const list= document.querySelectorAll(".fa-star");

  if (stars) {
    stars.addEventListener('mouseover', (event) => {
      const arrayOfStars = Array.from(list)

      function findIndexNumber(element) {
        return element == event.target;
      }

      const star = arrayOfStars.findIndex(findIndexNumber) + 1;

      list.forEach(function(item, index) {
        let i = 0;
        for(i=1; i <= 5; i++){
          if(i <= star){
            console.log(i);
            item.classList.add('fas');
            item.classList.remove('far');
          } else {
            console.log(i);
            item.classList.remove('fas');
            item.classList.add('far');
          }
        }
      })
    })
    stars.addEventListener('click', (event) => {
      list.forEach(function(item, index) {
        if (event.target == item) {
          rating.value = index + 1;
          newRatingForm.submit();
        }
      })
    });
  }
};

export { addRating } ;
