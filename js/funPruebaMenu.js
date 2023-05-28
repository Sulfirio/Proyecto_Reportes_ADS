// Obtener elementos del DOM
var navLinks = document.querySelectorAll('nav a');
var sections = document.querySelectorAll('section');

// Función para cambiar de sección al hacer clic en una pestaña
function navigateToSection(event) {
  event.preventDefault();
  
  // Remover la clase "active" de todas las secciones y enlaces
  sections.forEach(function(section) {
    section.classList.remove('active');
  });
  navLinks.forEach(function(link) {
    link.classList.remove('active');
  });
  
  // Agregar la clase "active" a la sección y enlace seleccionados
  var section = document.querySelector(this.getAttribute('href'));
  section.classList.add('active');
  this.classList.add('active');
}

// Asignar evento "click" a cada enlace
navLinks.forEach(function(link) {
  link.addEventListener('click', navigateToSection);
});
