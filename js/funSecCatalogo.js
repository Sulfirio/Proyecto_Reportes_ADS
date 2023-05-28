$(function() {
  $('.tab').on('click', function() {
    var page = $(this).data('page');
    $('.catalogo_content').load(page + '.html');
  });

  // Cargar datos desde el archivo PHP usando AJAX
  $.ajax({
    url: 'php/muestra.php',
    type: 'GET',
    success: function(response) {
      // Insertar los datos en un elemento de la página
      $('.catalogo_data_container').html(response);
    },
    error: function() {
      alert('Error al cargar los datos.');
    }
  });

  $('#miFormularioAvances').on('submit', function(e){
    e.preventDefault();
    $.ajax({
        url: 'php/buscarEstimacion.php',
        type: 'post',
        data: $('#miFormularioAvances').serialize(),
        success: function(response){
            $('#resultadoBusquedaAvances').html(response);
        }
    });
});

// AJAX para obtener las columnas en "avances"
$.ajax({
    url: 'php/columnasEstimacion.php',
    type: 'POST',
    success: function(response){
        var columnas = JSON.parse(response);
        var select = $('#columnasAvances');
        select.append('<option selected="true" disabled="disabled">Elige una columna</option>');
        columnas.forEach(function(columna){
            select.append('<option value="' + columna + '">' + columna + '</option>');
        });
    }
});
});