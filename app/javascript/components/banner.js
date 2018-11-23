import Typed from 'typed.js';

function loadDynamicBannerText() {
  if (document.getElementById("banner-typed-text")) {
   new Typed('#banner-typed-text', {
    strings: ["IN REAL STORES",
    "IN YOUR TARGET MARKET",
     "IN PHYSICAL STORES",
    "IN LOCAL COMMUNITIES"],
    typeSpeed: 80,
    loop: true,
    backSpeed: 20,
    backDelay: 1500
  });
 }
}

export { loadDynamicBannerText };
