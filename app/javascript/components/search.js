function openSearch() {
  const searchIcon = document.querySelector('.search-icon');
  const searchBar = document.querySelector('.search-navbar');

  if (searchIcon) {
    searchIcon.addEventListener("click", (event) => {
      searchBar.classList.toggle('hidden');
    });
  }
};

export { openSearch };
