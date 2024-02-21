function toggleMode() {
  const body = document.body;

  // Toggle dark mode class on the body
  body.classList.toggle('dark-mode');

  // Save the current mode in localStorage
  const isDarkMode = body.classList.contains('dark-mode');
  localStorage.setItem('darkMode', isDarkMode);
}

// Check for dark mode preference in localStorage
const savedDarkMode = localStorage.getItem('darkMode');

if (savedDarkMode === 'true') {
  document.body.classList.add('dark-mode');
}
