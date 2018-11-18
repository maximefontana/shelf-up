function editStore() {
  const storeName = document.querySelector('.store-name');
  const editName = document.querySelector('.edit-store-name');
  const editCity = document.querySelector('.edit-store-city');
  const editDescription = document.querySelector('.edit-store-description');
  const inputName = document.querySelector('.input-store-name');
  const inputCity = document.querySelector('.input-store-city');
  const inputDescription = document.querySelector('.input-store-description');
  const editButton = document.querySelector('.store-edit-button');

  if (editName) {
    editName.addEventListener("click", (event) => {
      inputName.classList.remove('hidden');
      inputCity.classList.add('hidden');
      inputDescription.classList.add('hidden');
    });
    editCity.addEventListener("click", (event) => {
      inputName.classList.add('hidden');
      inputCity.classList.remove('hidden');
      inputDescription.classList.add('hidden');
    });
    editDescription.addEventListener("click", (event) => {
      inputName.classList.add('hidden');
      inputCity.classList.add('hidden');
      inputDescription.classList.remove('hidden');
    });
  }
};

export { editStore };
