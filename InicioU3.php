<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>princial Usuario</title>
    <link rel="stylesheet" type="text/css" href="css/stPruebaMenu.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="js/funSecCatalogo.js"></script>
    <script src="js/funSecPersonal.js"></script>
    <script src="js/funSecFrentes.js"></script>
    <script src="js/funFormulario.js"></script>
    <script src="js/funWho.js"></script>
    <script src="js/funListEstimacionRes.js"></script>
    <script src="js/funConceptos.js"></script>
    

    <!--REUBICAR LOS ESTILOS PLIS-->
    <style>
      #miTabla {
          border-collapse: collapse;
          
      }
      #miTabla td, #miTabla th {
          border: 1px solid black;
          padding: 8px;
          white-space: nowrap;
      }
      #miTablaAvances {
          border-collapse: collapse;
          
      }
      #miTablaAvances td, #miTablaAvances th {
          border: 1px solid black;
          padding: 8px;
          white-space: nowrap;
      }

      .container {
      display: flex;
      flex-wrap: wrap;
      width: 100%;
      justify-content: space-around;
      flex-direction: row;
      }
  
      .box {
        width: 150px;
        height: 50px;
        display: flex;
        align-items: center;
        justify-content: space-between;
        margin: 5px;
      }
      .centered-textarea {
        display: flex;
        flex-direction: column;
        align-items: center;
    }
      </style>
     <!--****************************--> 
  </head>

  <body>

    <header>
      <h1 id="content"></h1>
      <nav>
        <ul>
          <li><a href="#inicio" class="active">Inicio</a></li>
          <li><a href="#catalogo">Catálogo</a></li>
          <li><a href="#captura">Captura de documentos</a></li>
          <li><a href="#consulta">Consulta</a></li>
          <li><a href="#avances">Avances generales</a></li>
          <li><a href="#personal">Personal</a></li>
          <li><a href="#frentes">Frentes</a></li>
          <li><a href="#formulario">Formulario</a></li>
          <li><a href="#estimaciones2">Estimaciones_B</a></li>
          <li><a href="#Captura_Formulario">Formulario Estimaciones</a></li>
          <li><a href="#estimaciones">Estimaciones</a></li>
          <li><a href="#Subir_concepto">Subir concepto</a></li>
        </ul>
      </nav>
    </header>

    <main>

<!--***************************************inicio******************************************-->
      <section id="inicio" class="active">
        <h2>Bienvenidos a nuestra empresa</h2>
        <p>Descripción general de la empresa y sus servicios.</p>
      </section>
<!--**************************************************************************************************-->


<!--***************************************catalogo******************************************-->
      <section id="catalogo">
        <div class="catalogo_content">
          <h2>Catálogo de obras</h2>
          <p>Lista de las obras disponibles, con información detallada y fotos.</p>
        </div>

        <div class="catalogo_data_container"></div>
      </section>
<!--**************************************************************************************************-->


<!--***************************************captura******************************************-->
      <section id="captura">
        <h2>Captura de documentos</h2>
        <p>Formulario para capturar los documentos necesarios para la solicitud de una obra.</p>
      </section>
<!--**************************************************************************************************-->


<!--***************************************consulta******************************************-->
      <section id="consulta">
        <h2>Consulta de obras</h2>
        <p>Formulario para buscar una obra en particular y ver su información detallada.</p>
      </section>
<!--**************************************************************************************************-->


<!--***************************************avances******************************************-->
      <section id="avances">
        
        <h2>Avances generales</h2>
        <p>Información general sobre el avance de las obras en curso.</p>

        <div class="progress-bar-container">

          <div class="progress-bar">
            <div class="progress"></div>
            <div class="progress-text">0%</div>
          </div>

          <form>
            <label for="start-date">Fecha de inicio:</label>
            <input type="date" id="start-date" name="start-date" value="2023-01-01"><br>
      
            <label for="end-date">Fecha de finalización:</label>
            <input type="date" id="end-date" name="end-date" value="2023-12-31"><br>
      
            <button type="submit">Actualizar</button>
          </form>
          
        </div>

        <form id="miFormularioAvances">
          <label for="columnasAvances">Selecciona una columna:</label><br>
          <select id="columnasAvances" name="columna"></select>
          <br>
          <label for="miCuadroAvances">Busqueda:</label><br>
          <input type="text" id="miCuadroAvances" name="miCuadro"><br>
          <button type="submit">Buscar</button>
        </form>
        
        <table id="miTablaAvances">
          <tbody id="resultadoBusquedaAvances">
          </tbody>
        </table>

      </section>
<!--**************************************************************************************************-->


<!--***************************************personal******************************************-->
      <section id="personal">
        <div class="personal_content">
          <h2>Personal de las obras</h2>
          <p>Lista del personal correspondiente a las obras disponibles.</p>
        </div>
  
        <div class="personal_data_container"></div>

        <form id="miFormulario">
          <label for="columnas">Selecciona una columna:</label><br>
          <select id="columnas" name="columna"></select>
          <br>
          <label for="miCuadro">Busqueda:</label><br>
          <input type="text" id="miCuadro" name="miCuadro"><br>
          <button type="submit">Buscar</button>
        </form>

        <table id="miTabla">
          <tbody id="resultadoBusqueda">
          </tbody>
        </table>

      </section>
<!--**************************************************************************************************-->

<!--***************************************frentes******************************************-->
      <section id="frentes">
        <div class="frentes_content">
          <h2>Frentes de Obra</h2>
          <p>Consulta los frentes de obra en los que trabajas actualmente.</p>
        </div>

        <div class="frentes_data_container"></div>
      </section>
<!--**************************************************************************************************-->


<!--*****************************formulario**********************************************************-->
      <section id ="formulario">
        <div id="personal_content_form">
          <h2>Formulario para mandar reportes</h2>
          <p>Puedes enviar tu reporte aqui</p>
        </div>

        <form id="form_reporte">
          <label for="idCapturador">Id de Capturador</label><br>
          <input type="text" id="idCapturador" name="capturador"><br>
          
          <label for="numero">Nivel de Urgercia</label><br>
          <select id="numero" name="numero">
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
          </select><br>
  
          <label>¿El Reporte esta aprobado?</label><br>
          <input type="radio" id="1" name="aprobado" value="SI">
          <label for="1">SI</label><br>
          <input type="radio" id="3" name="aprobado" value="NO">
          <label for="3">NO</label><br><br>
  
          <input type="submit" value="Enviar">
        </form>
      </section>
<!--**************************************************************************************************-->

<!--***************************************estimaciones******************************************-->
<section id="estimaciones2">
  <div class="estimaciones_content">
    <h2>Estimaciones</h2>
    <p>El Residente tiene la tarea de hacer la validación final de las estimaciones:</p>
    <p>En desarrollo..</p>
  </div>

  <div class="estimaciones_data_container"></div>
</section>
<!--**************************************************************************************************-->

<!--*****************************Formulario_Estimaciones**********************************************************-->
      <section id="Captura_Formulario">
        <div class="centered-textarea">
          <h2>Puedes Realizar tu Estimacion aqui</h2>
        </div>
        <div class="centered-textarea">
          <select id="meses">
              <option value="" selected disabled>Escoge el mes</option>
              <option value="Enero">Enero</option>
              <option value="Febrero">Febrero</option>
              <option value="Marzo">Marzo</option>
              <option value="Abril">Abril</option>
              <option value="Mayo">Mayo</option>
              <option value="Junio">Junio</option>
              <option value="Julio">Julio</option>
              <option value="Agosto">Agosto</option>
              <option value="Septiembre">Septiembre</option>
              <option value="Octubre">Octubre</option>
              <option value="Noviembre">Noviembre</option>
              <option value="Diciembre">Diciembre</option>
          </select>
      </div>
        <div id="container" class="container">
        </div>
        <button id="showSelected">Mostrar Seleccionados</button><br>
        <div class="centered-textarea">
          <p>Introduce Razon Social</p>
          <textarea id="userInput0" placeholder="Escribe aquí..." rows="4" cols="50"></textarea>
      </div>
      <div class="centered-textarea">
          <p>Justificacion</p>
          <textarea id="userInput1" placeholder="Escribe aquí..." rows="4" cols="50"></textarea>
      </div>
      <button id="sendData" class="centered-textarea">Enviar</button>

      </section>
<!--**************************************************************************************************-->

<!--*****************************estimaciones**********************************************************-->
<section id="estimaciones">
  <select id="estimacionNum" name="nuM">
  </select>
  <div id="tablaResultados"></div>
</section>
<!--**************************************************************************************************-->

<!--*****************************Subir_concepto**********************************************************-->
<section id="Subir_concepto">
  <div>
    <h2>Puede introducir aqui un concepto</h2>
  </div>
  <form id="myForm" method="post">
    <label for="nombre">Nombre:</label><br>
    <input type="text" id="nombre" name="nombre"><br>
    
    <label for="descripcion">Descripción:</label><br>
    <textarea id="descripcion" name="descripcion"></textarea><br>
  
    <label for="unidad">Unidad:</label><br>
    <input type="number" id="unidad" name="unidad" pattern="[0-9]*"><br>
  
    <label for="precio">Precio:</label><br>
    <input type="number" id="precio" name="precio" pattern="[0-9]*"><br>
  
    <button type="button" id="submitButton">Submit</button>	
  </form>
</section>
<!--**************************************************************************************************-->


    </main>
    <script src="js/funCaptura.js"></script>
    <script type="text/javascript" src="js/funPruebaMenu.js"></script>
  </body>
</html>
