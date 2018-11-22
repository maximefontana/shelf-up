function editStore() {
  const storeName = document.querySelector('.store-name');

  const editName = document.querySelector('.edit-store-name');
  const editAddress = document.querySelector('.edit-store-address');
  const editDescription = document.querySelector('.edit-store-description');
  const editCommish = document.querySelector('.edit-store-commish');
  const editCategory = document.querySelector('.edit-store-category');
  const editTime = document.querySelector('.edit-store-time');
  const editPrice = document.querySelector('.edit-store-price');
  const editLink = document.querySelector('.edit-store-link');

  const inputName = document.querySelector('.input-store-name');
  const inputAddress = document.querySelector('.input-store-address');
  const inputDescription = document.querySelector('.input-store-description');
  const inputCommish = document.querySelector('.input-store-commish');
  const inputCategory = document.querySelector('.input-store-category');
  const inputTime = document.querySelector('.input-store-time');
  const inputPrice = document.querySelector('.input-store-price');
  const inputLink = document.querySelector('.input-store-link');

  const editButton = document.querySelector('.store-edit-button');

  if (editName) {
    editName.addEventListener("click", (event) => {
      inputName.classList.toggle('hidden');
    });
    editAddress.addEventListener("click", (event) => {
      inputAddress.classList.toggle('hidden');
    });
    editDescription.addEventListener("click", (event) => {
      inputDescription.classList.toggle('hidden');
    });
    editCategory.addEventListener("click", (event) => {
      inputCategory.classList.toggle('hidden');
    });
    editTime.addEventListener("click", (event) => {
      inputTime.classList.toggle('hidden');
    });
    editPrice.addEventListener("click", (event) => {
      inputPrice.classList.toggle('hidden');
    });
    editLink.addEventListener("click", (event) => {
      inputLink.classList.toggle('hidden');
    });
  }
  if (editCommish) {
    editCommish.addEventListener("click", (event) => {
      inputCommish.classList.toggle('hidden');
    });
  }
};

export { editStore };
