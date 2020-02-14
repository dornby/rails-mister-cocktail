const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  const path = RegExp('\/cocktails\/[1-9]$');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 20 && window.location.pathname === '/') {
        navbar.classList.add('navbar-lewagon-tang');
      } else if (window.scrollY >= 500 && path.test(window.location.pathname)) {
        navbar.classList.add('navbar-lewagon-tang');
      } else {
        navbar.classList.remove('navbar-lewagon-tang');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
