function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.navbar-homepage');
  const links = document.querySelectorAll('.navbar-homepage-wagon-link')
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-homepage-white');
        links[0].classList.remove('navbar-wagon-link');
        links[0].classList.add('navbar-homepage-black-link');
        links[1].classList.remove('navbar-wagon-link');
        links[1].classList.add('navbar-homepage-black-link');
      } else {
        navbar.classList.remove('navbar-homepage-white');
        links[0].classList.add('navbar-wagon-link');
        links[0].classList.remove('navbar-homepage-black-link');
        links[1].classList.add('navbar-wagon-link');
        links[1].classList.remove('navbar-homepage-black-link');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
