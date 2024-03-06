document.addEventListener('DOMContentLoaded', function() {
    const signupForm = document.getElementById('signupForm');
    const loginForm = document.getElementById('loginForm');
    const signupLink = document.getElementById('signupLink');
    const loginLink = document.getElementById('loginLink');
  
    signupLink.addEventListener('click', function(event) {
      event.preventDefault();
      signupForm.style.display = 'block';
      loginForm.style.display = 'none';
    });
  
    loginLink.addEventListener('click', function(event) {
      event.preventDefault();
      loginForm.style.display = 'block';
      signupForm.style.display = 'none';
    });
  });