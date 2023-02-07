<?php
session_start();
?>
<!DOCTYPE html>

<head>
    <title>Mi cuenta</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/estiloArriba.css" />
    <link rel="stylesheet" href="css/estiloAbajo.css" />
    <link rel="stylesheet" href="css/menuMiCuenta10.css" />
    <link rel="stylesheet" href="css/MiCartera5.css" />
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
              <a <?php if(isset($_SESSION['correo'])){ ?> href="MiCartera.php" <?php } else { ?> href="login.php"<?php } ?>>
                <i class="far fa-user"></i> <br />
                <?=$_SESSION['correo']?></a
              ><br />
            </li>
          </ul>
        </nav>
      </div>
    </header>

    <div class="divGeneralMiCartera">
      <div class="divMenuLateral">
        <nav class="navMenuLateral">
            <ul class="ulMiCuenta">
              <li class="flecha">
                <a href= "home.php">
                <i class="fas fa-arrow-left" id="arrow"></i>
                </a>
              </li>
                <li class="liMiCuenta">
                    <p class="miCuenta">Mi Cuenta</p>
                    <p class="correo"><?=$_SESSION['correo']?></p>
                </li>
                <a href= "MisPedidos.php">
                <li class="liMenuLateral">
                    <div class="barra"></div>
                    <p class="menuLateral">Mis pedidos</p>
                </li>
                </a>
                <a href= "MisDatosPersonales.php">
                <li class="liMenuLateral">
                    <div class="barra"></div>
                    <p class="menuLateral">Mis datos personales</p>
                </li>
                </a>
                <a href= "MiCartera.php">
                <li class="liMenuLateral">
                    <div class="barra"></div>
                    <p class="menuLateralSelect">Mi cartera</p>
                </li>
                </a>
               
                <a href= "logout.php">
                <li class="liMenuLateral"> 
                    <div class="barra"></div>
                    <p class="menuLateral"><i class="fas fa-power-off"></i> Cerrar sesion</p>
                </li>
                </a>

            </ul>
        </nav>
      </div>
      <div class="divCartera1">
        <nav>
          <ul class="ulCartera">
            <li class="liMiCartera">
              <p class="pmiCartera">Mi cartera</p>
            </li>
            <?php
            include('datosConexion.php');
             include('db.php');
             $res = "SELECT * FROM usuario WHERE correo='".$_SESSION["correo"]."'";
             $sql = mysqli_query($conexion, $res);
             while ($fila = mysqli_fetch_array($sql)) {
                                                   
            ?>
            <li class="liDatosCart">
              <p class="datosCartera"><?php echo $fila['nombre'] ?></p>
              <p class="datosCartera"><?php echo $fila['direccion'] ?></p>
              <p class="datosCartera"><?php echo $fila['codigoPostal'] ?></p>
              <p class="datosCartera">Almeria</p>
              <p class="datosCartera">Almeria</p>
            </li>
          </ul>
          <?php }
          ?>
        </nav>
      </div>
      <div class="divCartera2">
        <nav>
          <ul class="ulCartera">
            <li class="liAñadir">
              <a href="AñadirTarjeta.html">
                <p class="pAñadir"><i class="fas fa-plus-square"></i></p>
              </a>
            </li>
          </ul>
        </nav>
      </div>
    </div>
    <br>







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