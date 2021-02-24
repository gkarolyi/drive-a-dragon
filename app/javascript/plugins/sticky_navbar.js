const stickyNavbar = () => {
  const navbar = document.getElementById("sticky-navbar");
  const sticky = navbar.offsetTop;
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky");
  } else {
    navbar.classList.remove("sticky");
  }
};

export { stickyNavbar };
