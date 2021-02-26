const initNavbarActive = () => {
  const navContainer = document.getElementById("navbarSupportedContent");

  if (navContainer) {
    const navPanes = Array.from(document.getElementsByClassName("nav-item"));

    navPanes.forEach((item) => {
      item.addEventListener("click", (event) => {
        event.preventDefault();
        const current = document.getElementsByClassName("active")[0];
        current.classList.remove("active");
        event.target.classList.add("active");
      });
    });
  }
};

export { initNavbarActive };
