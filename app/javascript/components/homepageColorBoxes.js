function boxesScrollAnimation() {
  const boxes = document.querySelectorAll('.homepage-why-box');

  if (boxes) {
    window.addEventListener('scroll', () => {
      //console.log(window.scrollY + window.screen.height); // gives y value
      if (window.scrollY + window.screen.height >= window.innerHeight + 600) {
        boxes[1].style.opacity = '0.7';
      }
      if (window.scrollY + window.screen.height >= window.innerHeight + 1000) {
        boxes[2].style.opacity = '0.7';
      }
      if (window.scrollY + window.screen.height >= window.innerHeight + 1400) {
        boxes[5].style.opacity = '0.7';
      }
      if (window.scrollY + window.screen.height >= window.innerHeight + 1800) {
        boxes[6].style.opacity = '0.7';
      }

      //   boxes[2].classList.remove('hidden');
      //   boxes[5].classList.remove('hidden');
      //   boxes[6].classList.remove('hidden');

    });
  }
}

export { boxesScrollAnimation };
