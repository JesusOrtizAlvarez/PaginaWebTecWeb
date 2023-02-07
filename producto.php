<?php
session_start();
?>
<?php
include 'config.php';
include 'conexion.php';
include 'carritofuncional.php';
include("db.php");
if (isset($_GET['idprod'])) {
    $idprod = $_GET['idprod'];
    $resultado3 = $conexion->query("SELECT * FROM productos WHERE idProductos=" . $idprod) or die($conexion->error);
    if (mysqli_num_rows($resultado3) > 0) {
        $fila2 = mysqli_fetch_row($resultado3);
    } else {
        header("Location: home.php");
    }
} else {
    header("Location: home.php");
}



?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Pagina Principal</title>
    <link rel="stylesheet" href="css/estiloArriba.css" />
    <link rel="stylesheet" href="css/estiloAbajo.css" />
    <link rel="stylesheet" href="css/productoyprecio.css" />
    <link rel="stylesheet" href="css/styles32.css" />


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>


    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous" />
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

    <div class="container">
    <br><br><br>
    <?php if($mensaje!=""){?>
    <div class="alert alert-succes">
        <?php echo $mensaje; ?>
        <a href="mostrarcarrito.php"> Ver carrito</a>
    </div>
    <?php }?>
    <div class="row">
    <?php
     $sentencia=$pdo->prepare("SELECT * FROM productos WHERE idProductos=" . $idprod);
     $sentencia->execute();
     $listaProductos=$sentencia->fetchAll(PDO::FETCH_ASSOC);
     //print_r($listaProductos);
    ?>
    <?php foreach($listaProductos as $producto){ ?>
      <div class="col-3">
        <div class="card">
        <!-- Product section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                    <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0" src="<?php echo $fila2[7]; ?>" class="img-fluid" /></div>
                    <div class="col-md-6">
                        <div class="small mb-1"><?php echo $fila2[6]; ?></div>
                        <h1 class="display-5 fw-bolder"><?php echo $fila2[1]; ?></h1>
                        <div class="fs-5 mb-5">
                            <h2><?php echo $fila2[2]; ?>€</h2>
                        </div>
                        <p class="lead"><?php echo $fila2[3]; ?></p>
                        <div class="d-flex">
                            <input class="form-control text-center me-3" id="inputQuantity" type="num" value="1" style="max-width: 3rem" />
                        </div>
                        <form action="" method="post">

                        <input type="hidden" name="idProductos" id="idProductos" value="<?php echo openssl_encrypt($producto['idProductos'],COD,KEY);?>">
                        <input type="hidden" name="nombre" id="nombre" value="<?php echo openssl_encrypt($producto['nombre'],COD,KEY);?>">
                        <input type="hidden" name="precio" id="precio" value="<?php echo openssl_encrypt($producto['precio'],COD,KEY);?>">
                        <input type="hidden" name="cantidad" id="cantidad" value="<?php echo openssl_encrypt(1,COD,KEY);?>">

                        <button class="btn btn-primary"
                                name="btnAccion"
                                value="Agregar"
                                type="submit">
                        Agregar al carrito
                        </button>

                    </form>
                    </div>
    </div>
    </div>
    </div>
    <p class="lead"> <br><br><br><?php echo $fila2[4]; ?></p>
    </div>
    <?php } ?>    
    </div>
    <div class="logoinfo">
        <h1 class="title">¿Necesitas ayuda para elegir tus piezas?
        </h1>
        <p class="logoInfo2"><i class="fas fa-info-circle"></i></p>
        <p>Contacta con Nuestro equipo de expertos</p>
        <p>950 624 XXX</p>
    </div>
    <br><br>
    </div>

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
    <script>
  $(function () {
  $('[data-toggle="popover"]').popover()
})
</script>
</body>
</html>