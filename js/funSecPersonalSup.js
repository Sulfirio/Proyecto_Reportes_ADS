$(function() {
    $('.tab').on('click', function() {
      var page = $(this).data('page');
      $('.personal_content').load(page + '.html');  //personal_content
    });
  
    // Cargar datos desde el archivo PHP usando AJAX
    $.ajax({
      url: 'php/muestraPersonalSupervisor.php',
      type: 'POST',
      success: function(response) {
        // Insertar los datos en un elemento de la página
        $('.personal_data_container').html(response);   //Data_container
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
      type: 'get',
      success: function(response){
          var columnas = JSON.parse(response);
          var select = $('#columnasAvances');
          select.append('<option selected="true" disabled="disabled">Elige una columna</option>');
          columnas.forEach(function(columna){
              select.append('<option value="' + columna + '">' + columna + '</option>');
          });
      }
  });
  
    // AJAX para buscar
  $('#miFormulario').on('submit', function(e){
      e.preventDefault();
      $.ajax({
          url: 'php/buscar.php', 
          type: 'POST',
          data: $('#miFormulario').serialize(),
          success: function(response){
              $('#resultadoBusqueda').html(response);
          }
      });
  });
  
  // AJAX para obtener las columnas
  $.ajax({
      url: 'php/columnas.php', 
      type: 'POST',
      success: function(response){
          var columnas = JSON.parse(response);
          var select = $('#columnas');
          select.append('<option selected="true" disabled="disabled">Elige una columna</option>'); 
          columnas.forEach(function(columna){
              select.append('<option value="' + columna + '">' + columna + '</option>');
          });
      }
  });
  });