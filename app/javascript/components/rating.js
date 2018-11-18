function addRating(reviewHTML) {
  const rating = document.getElementById('rating_score');
  const stars = document.querySelector('.store-rating-show');
  const newRatingForm = document.getElementById('new_rating');
  const list= document.querySelectorAll(".fa-star");
  const fullStars= document.querySelectorAll(".fas.fa-star");
  const number = fullStars.length

  if (stars) {
    stars.addEventListener('mouseover', (event) => {
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
