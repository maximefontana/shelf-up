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
      // inputAddress.classList.add('hidden');
      // inputDescription.classList.add('hidden');
      // inputCommish.classList.add('hidden');
      // inputCategory.classList.add('hidden');
      // inputTime.classList.add('hidden');
      // inputPrice.classList.add('hidden');
      // inputLink.classList.add('hidden');
    });
    editAddress.addEventListener("click", (event) => {
      // inputName.classList.add('hidden');
      inputAddress.classList.toggle('hidden');
      // inputDescription.classList.add('hidden');
      // inputCommish.classList.add('hidden');
      // inputCategory.classList.add('hidden');
      // inputTime.classList.add('hidden');
      // inputPrice.classList.add('hidden');
      // inputLink.classList.add('hidden');
    });
    editDescription.addEventListener("click", (event) => {
      // inputName.classList.add('hidden');
      // inputAddress.classList.add('hidden');
      inputDescription.classList.toggle('hidden');
      // inputCommish.classList.add('hidden');
      // inputCategory.classList.add('hidden');
      // inputTime.classList.add('hidden');
      // inputPrice.classList.add('hidden');
      // inputLink.classList.add('hidden');
    });
    editCategory.addEventListener("click", (event) => {
      // inputName.classList.add('hidden');
      // inputAddress.classList.add('hidden');
      // inputDescription.classList.add('hidden');
      // inputCommish.classList.add('hidden');
      inputCategory.classList.toggle('hidden');
      // inputTime.classList.add('hidden');
      // inputPrice.classList.add('hidden');
      // inputLink.classList.add('hidden');
    });
    editTime.addEventListener("click", (event) => {
      // inputName.classList.add('hidden');
      // inputAddress.classList.add('hidden');
      // inputDescription.classList.add('hidden');
      // inputCommish.classList.add('hidden');
      // inputCategory.classList.add('hidden');
      inputTime.classList.toggle('hidden');
      // inputPrice.classList.add('hidden');
      // inputLink.classList.add('hidden');
    });
    editPrice.addEventListener("click", (event) => {
      // inputName.classList.add('hidden');
      // inputAddress.classList.add('hidden');
      // inputDescription.classList.add('hidden');
      // inputCommish.classList.add('hidden');
      // inputCategory.classList.add('hidden');
      // inputTime.classList.add('hidden');
      inputPrice.classList.toggle('hidden');
      // inputLink.classList.add('hidden');
    });
    editLink.addEventListener("click", (event) => {
      // inputName.classList.add('hidden');
      // inputAddress.classList.add('hidden');
      // inputDescription.classList.add('hidden');
      // inputCommish.classList.add('hidden');
      // inputCategory.classList.add('hidden');
      // inputTime.classList.add('hidden');
      // inputPrice.classList.add('hidden');
      inputLink.classList.toggle('hidden');
    });
  }
  if (editCommish) {
    editCommish.addEventListener("click", (event) => {
      // inputName.classList.add('hidden');
      // inputAddress.classList.add('hidden');
      // inputDescription.classList.add('hidden');
      inputCommish.classList.toggle('hidden');
      // inputCategory.classList.add('hidden');
      // inputTime.classList.add('hidden');
      // inputPrice.classList.add('hidden');
      // inputLink.classList.add('hidden');
    });
  }
};

export { editStore };
