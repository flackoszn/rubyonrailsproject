document.addEventListener('DOMContentLoaded', () => {
  const sidebar = document.getElementById('sidebar');
  const hamburger = document.getElementById('hamburger');

  // Aggiungi un event listener al pulsante hamburger
  hamburger.addEventListener('click', () => {
    sidebar.classList.toggle('open'); // Apre/chiude la sidebar
    hamburger.classList.toggle('active'); // Anima il pulsante
  });
});
