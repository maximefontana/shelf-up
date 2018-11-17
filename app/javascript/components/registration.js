function showForm() {
  const ownerOption = document.querySelector('.owner');
  const entrepreneurOption = document.querySelector('.entrepreneur');
  const ownerForm = document.querySelector('.owner-form');
  const entrepreneurForm = document.querySelector('.entrepreneur-form');

  if (ownerOption) {
    ownerOption.addEventListener("click", (event) => {
      ownerForm.classList.remove('hidden');
      entrepreneurForm.classList.add('hidden');
    });
    entrepreneurOption.addEventListener("click", (event) => {
      ownerForm.classList.add('hidden');
      entrepreneurForm.classList.remove('hidden');
    });
  }
};

export { showForm };

// function scroll() {
//   const learnMore = document.querySelector('.learn-button');
//   const middle = document.querySelector("#middle");

//   if (learnMore) {
//     learnMore.addEventListener('click', event => {
//       middle.scrollIntoView({
//         behavior: 'smooth'
//       });
//     })
//   }
// };

// export { scroll };
