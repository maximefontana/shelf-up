import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["YOUR PRODUCTS IN REAL STORES", "Please work"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
