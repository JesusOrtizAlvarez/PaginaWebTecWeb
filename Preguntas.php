<?php
session_start();
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Ayuda y contacto</title>
    <link rel="stylesheet" href="css/estiloArriba.css" />
    <link rel="stylesheet" href="css/style1.css" />
    <link rel="stylesheet" href="css/estiloAbajo.css" />
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
      integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
      crossorigin="anonymous"
    />
  </head>
  <body>

    <header class="RecambiosCostaSol">
        <div class="ancho">
          <div class="logo">
            <p>
              <a href="home.php"> <img src="img/logo.png" /></a>
            </p>
          </div>
          <nav>
            <ul>
              <li>
                <a href="Informacion.php">
                  <i class="far fa-address-card"></i> <br />
                  ¿Quién somos?</a
                ><br />
              </li>
              <li>
                <a href="AyudaYContacto.php">
                  <i class="far fa-question-circle"></i> <br />
                  Ayuda y Contacto</a
                ><br />
              </li>
              <li>
                <a href="mostrarcarrito.php">
                  <i class="fas fa-shopping-basket"></i> <br />
                  Mi cesta</a
                >
                <br />
              </li>
              <li>
                <a <?php if(isset($_SESSION['correo'])){ ?> href="MisDatosPersonales.php" <?php } else { ?> href="login.php"<?php } ?>>
                  <i class="far fa-user"></i> <br />
                  <?=$_SESSION['correo']?></a
                ><br />
              </li>
            </ul>
          </nav>
        </div>
      </header>


      <div class="boton-atras">
        <a href="AyudaYContacto.php"><img class="item-banner"src="img/atras.png" height="75" width= "75"></a>
    </div> 


    <div id="inicio">
        <h6> ¡HOLA! ¿EN QUÉ PODEMOS AYUDARTE? </h6>
      <h2 class="field" id="searchform">
          <input type="text" id="searchterm" placeholder="Busca información..." />
          <button type="button" id="search">¡Buscar!</button>
      </h2>
  </div>
  
  <div>
      <img class="logotipo-centro"src="img/logo.png" height="200" width="400">
  </div>


    <h5> Preguntas más frecuentes</h5>



    <details>
      <summary>¿Cuando recibiré mi pedido?</summary>
      <h2>Su pedido será entregado en un período de entre 10 y 20 días.</h2>
    </details>



    <details>
      <summary>¿Cómo escoger la pieza adecuada?</summary>
      <h2>Para poder mostrarte las piezas compatibles con tu vehículo, es importante que selecciones tu modelo de coche en el menú correspondiente. </h2>
    </details>



    <details>
      <summary>¿Cómo solicito una devolución?</summary>
      <h2>Para solicitar una devolución deberá contactar con la empresa a través de cualquier red social exponiendo el motivo de su devolución.</h2>
    </details>

    











<footer>
      <div class="content">
        <div class="top">
          <div class="logo-details">
            <span class="logo_name">Recambios CostaSol</span>
          </div>
          <div class="media-icons">
            <a href="https://es-es.facebook.com/recambioscostasol"><i class="fab fa-facebook-f"></i></a>
            <a href="#"><i class="fab fa-twitter"></i></a>
            <a href="https://www.instagram.com/explore/locations/1026264110/recambios-costasol/?hl="><i class="fab fa-instagram"></i></a>
            <a href="#"><i class="fab fa-linkedin-in"></i></a>
            <a href="#"><i class="fab fa-youtube"></i></a>
          </div>
        </div>
        <div class="link-boxes">
          <ul class="box">
            <li class="link_name">Empresa</li>
            <li><a href="busqueda.php">Productos</a></li>
            <li><a href="https://www.google.es/maps/place/Recambios+Costasol+(HUÉRCAL+DE+ALMERÍA)/@36.8400132,-2.6040666,12z/data=!3m1!5s0xd7a9e39d4aa7bb7:0xdeb2a0b77d0e209d!4m9!1m2!2m1!1srecambios+costasol!3m5!1s0xd7a9de169b9a847:0x10ebb71847d12a14!8m2!3d36.8748741!4d-2.4432525!15sChJyZWNhbWJpb3MgY29zdGFzb2xaFCIScmVjYW1iaW9zIGNvc3Rhc29skgEVdXNlZF9hdXRvX3BhcnRzX3N0b3Jl?hl=es">Localizacion</a></li>
          </ul>
          <ul class="box">
            <li class="link_name">Ayuda y contacto</li>
            <li><a href="Preguntas.php">Devolución de una pieza</a></li>
            <li><a href="Preguntas.php">Modalidad de envío</a></li>
          </ul>
          <ul class="box">
            <li class="link_name">Aviso legal</li>
            <li><a href="politicaPrivacidad.php">Política de privacidad</a></li>
            <li><a href="condicionesgeneralesventa.php">Condiciones generales de venta</a></li>
          </ul>

          <ul class="box input-box">
            <form action="suscribir.php" method="POST">
            <li class="link_name">Suscríbete a nuestra Newsletter</li>
            <li><input type="text" name="correo" placeholder="Introduzca su email" required /></li>
            <li><input type="submit" value="Subscrirse" /></li>
            </form>
          </ul>
        </div>
      </div>
      <div class="bottom-details">
        <div class="bottom_text">
          <span class="copyright_text"
            >Copyright © 2021 <a href="home.php">Recambios CostaSol</a></span
          >
        </div>
      </div>
    </footer>
    </body>
  </html>
  