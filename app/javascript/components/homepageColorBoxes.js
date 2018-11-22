function boxesScrollAnimation() {
  const boxes = document.querySelectorAll('.homepage-why-box');

  if (boxes) {
    window.addEventListener('scroll', () => {
      console.log(window.scrollY); // gives y value
      if (window.scrollY + window.screen.height >= window.innerHeight + 580) {
        boxes[1].style.opacity = '0.7';
      }
      if (window.scrollY + window.screen.height >= window.innerHeight + 980) {
        boxes[2].style.opacity = '0.7';
      }
      if (window.scrollY + window.screen.height >= window.innerHeight + 1380) {
        boxes[5].style.opacity = '0.7';
      }
      if (window.scrollY + window.screen.height >= window.innerHeight + 1780) {
        boxes[6].style.opacity = '0.7';
      }
      if (window.scrollY <= 400) {
        boxes[1].style.opacity = '0.0';
        boxes[2].style.opacity = '0.0';
        boxes[5].style.opacity = '0.0';
        boxes[6].style.opacity = '0.0';
      }

      //   boxes[2].classList.remove('hidden');
      //   boxes[5].classList.remove('hidden');
      //   boxes[6].classList.remove('hidden');

    });
  }
}

export { boxesScrollAnimation };
