function showForm() {
  const ownerOption = document.querySelector('.owner');
  const entrepreneurOption = document.querySelector('.entrepreneur');
  const ownerForm = document.querySelector('.owner-form');
  const entrepreneurForm = document.querySelector('.entrepreneur-form');

  if (ownerOption) {
    ownerOption.addEventListener("click", (event) => {
      ownerForm.classList.remove('hidden');
      entrepreneurForm.classList.add('hidden');
      ownerOption.classList.add('active');
      entrepreneurOption.classList.remove('active');

    });
    entrepreneurOption.addEventListener("click", (event) => {
      ownerForm.classList.add('hidden');
      entrepreneurForm.classList.remove('hidden');
      entrepreneurOption.classList.add('active');
      ownerOption.classList.remove('active');

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
