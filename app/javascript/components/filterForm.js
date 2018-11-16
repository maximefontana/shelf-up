function openFilterForm(event) {
  const filterForm = document.querySelector('.store-index-form');
  const filterButton = document.querySelector('.filter-button');
  if (filterButton) {
    filterButton.addEventListener("click", event => {
      filterForm.classList.toggle('hidden');
    })
  }
};

export { openFilterForm };

