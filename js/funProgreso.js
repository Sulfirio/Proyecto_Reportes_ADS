// Obtener elementos del DOM
var startDateInput = document.getElementById('start-date');
var endDateInput = document.getElementById('end-date');
var progressBar = document.querySelector('.progress');
var progressText = document.querySelector('.progress-text');

// Función para actualizar la barra de progreso
function updateProgressBar() {
  // Fechas
  var startDate = new Date(startDateInput.value);
  var endDate = new Date(endDateInput.value);
  var currentDate = new Date();

  // Calcular el porcentaje de progreso
  var progress = Math.floor((currentDate - startDate) / (endDate - startDate) * 100);
  progress = Math.min(Math.max(progress, 0), 100);

  // Actualizar la barra de progreso
  progressBar.style.width = progress + '%';
  progressText.textContent = progress + '%';
}

// Escuchar cambios en los inputs
startDateInput.addEventListener('input', updateProgressBar);
endDateInput.addEventListener('input', updateProgressBar);

// Actualizar la barra de progreso al cargar la página
updateProgressBar();
