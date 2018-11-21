function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.navbar-homepage');
  const links = document.querySelectorAll('.navbar-homepage-wagon-link');
  const logo = document.querySelector('.nav-homepage-logo');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-homepage-white');
        navbar.classList.add('navbar-homepage-shadow');
        links[0].classList.remove('navbar-wagon-link');
        links[0].classList.add('navbar-homepage-black-link');
        links[1].classList.remove('navbar-wagon-link');
        links[1].classList.add('navbar-homepage-black-link');
        logo.classList.remove('nav-homepage-logo');
        logo.classList.add('navbar-homepage-logo-black');
      } else {
        navbar.classList.remove('navbar-homepage-white');
        navbar.classList.remove('navbar-homepage-shadow');
        links[0].classList.add('navbar-wagon-link');
        links[0].classList.remove('navbar-homepage-black-link');
        links[1].classList.add('navbar-wagon-link');
        links[1].classList.remove('navbar-homepage-black-link');
        logo.classList.add('nav-homepage-logo');
        logo.classList.remove('navbar-homepage-logo-black');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
