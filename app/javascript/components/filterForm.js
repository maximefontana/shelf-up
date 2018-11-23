function openFilterForm(event) {
  const filterForm = document.querySelector('.store-index-form');
  const filterButton = document.querySelector('.filter-button');
  if (filterButton) {
    filterButton.addEventListener("click", event => {
      // filterForm.fadeToggle();
      filterForm.classList.toggle('form-fadeOut');
      filterForm.classList.toggle('hidden');
      filterForm.classList.toggle('form-fadeIn');
    })
  }
};

export { openFilterForm };

