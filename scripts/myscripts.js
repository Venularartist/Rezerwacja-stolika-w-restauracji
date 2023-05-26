
// navbar's background becomes black when scrolled down by 56px and removed if scrolled up above 56px

const navEL = document.querySelector('.navbar');

window.addEventListener('scroll', () => {
  if (window.scrollY >= 56){
    navEL.classList.add('navbar-scrolled');
  } else if (window.scrollY < 56){
    navEL.classList.remove('navbar-scrolled');
  }
})


// Client-side email validation
const emailInput = document.getElementById('email');
const emailHelp = document.getElementById('emailHelp');

emailInput.addEventListener('input', function () {
    if (emailInput.validity.valid) {
    emailHelp.innerHTML = 'Please enter a valid email address.';
    emailHelp.classList.remove('text-danger');
    } else {
    emailHelp.innerHTML = 'Please enter a valid email address.';
    emailHelp.classList.add('text-danger');
    }
});

// Form submission handling
const reservationForm = document.getElementById('reservationForm');

reservationForm.addEventListener('submit', function (event) {
    event.preventDefault();
    if (reservationForm.checkValidity()) {
    // Submit the form or perform further processing
    alert('Form submitted successfully!');
    } else {
    // Form is invalid, display error messages or handle accordingly
    alert('Please fill in all required fields correctly.');
    }
});