<?php
session_start();
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Información de la empresa</title>
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




    <h3>Recambios Costasol</h3>

    <div class= "contenedor-description">
      
      <img class="logotipo"src="img/logo.png" height="200" width="400" align:"left">Recambios Costasol se dedica a la venta especializada de piezas y recambios del automóvil. Ponemos a su disposición una amplia gama de accesorios, de marcas tan importantes como Istobal, Motul, Krafft, Valeo, Bosch, Monroe, etc., como la maquinaria necesaria que precisa el taller para afrontar con garantías cualquier reparación.
      

        
    </div>

    <h3>¿Por qué elegirnos?</h3>

    <p class="texto">
      Nuestra experiencia nos avala más de 40 años de experiencia y nuestra presencia en toda la provincia nos convierte en líderes del sector. La mejor calidad. Ponemos a su disposición las marcas más importantes del sector y la maquinaria necesaria que precisa el taller para afrontar con garantías cualquier reparación.. Despues de la venta también estamos ahí. Le ofrecemos el servicio técnico post-venta mas eficaz y profesional del sector. Impartimos en nuestras instalaciones distintos cursos de formación para que usted y su equipo de trabajo dispongan del 100% de conocimiento sobre las nuevas tecnologías.
    </p>


    <h3>Nuestra misión</h3>

    <p class="texto">
      La dirección de Recambios CostaSol, junto con su equipo, tiene como objetivo prioritario alcanzar un prestigio reconocido que lo diferencie de la competencia, ofreciendo las mejores piezas, accesorios y recambios para el automóvil. Para mejorar el proceso de trabajo, con la finalidad de ofrecer una mejor satisfacción al cliente final, se propone mejorar continuamente los procesos internos de la empresa, planificando y coordinando la ejecución de los trabajos; reduciendo los errores e intentando prevenirlos, y sobre todo evitando que se vuelvan a repetir; incluyendo nuevo requisitos legales y reglamentarios, así como sugerencias aportadas por los propios usuarios.
    </p>


    <h3>El grupo</h3>

    <p class="texto">
      En el año 1978 un grupo de empresarios españoles decidieron formar un grupo de compras y así ser mas competitivos y poder ofrecer mejores productos a sus clientes , hablamos del grupo Biguisur, pionero en el sector del recambio libre, mas tarde , concretamente en el año 1992 se producia la fusión entre varios grupos y también se incorporarí an las mayores tiendas de recambios de este país, para así poder formar lo que fue el grupo mas potente y poderoso del país y asi de esta manera poder obtener las primeras marcas de recambio del automóvil, llegaba Grupo Union, lo que mas tarde y debido a su carácter internacional se denominaría Group Auto Union. Hoy Group Auto Union , puede presumir de ser líder en el sector del recambio libre , y de tener la mayor y mejor red de talleres asociados , Eurotaller, Intertaller y Top Truck.
    </p>











    
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
  