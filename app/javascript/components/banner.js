import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["IN REAL STORES",
    "IN YOUR TARGET MARKET",
     "IN PHYSICAL STORES",
    "IN LOCAL COMMUNITIES"],
    typeSpeed: 80,
    loop: true
    setTimeout(loadDynamicBannerText, 500);
  });
}

export { loadDynamicBannerText };
