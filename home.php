<?php
session_start();
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Pagina Principal</title>
    <link rel="stylesheet" href="css/estiloArriba.css" />
    <link rel="stylesheet" href="css/estiloAbajo.css" />
    <link rel="stylesheet" href="css/ListaProductos45.css" />
    <link rel="stylesheet" href="css/homefinal48.css" />
    <link rel="stylesheet" href="css/homecomentarios4.css" />
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
      integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
      crossorigin="anonymous"
    />
    <script src="https://consent.cookiefirst.com/banner.js" data-cookiefirst-key="54ae3ff1-0f46-4629-aa74-89b870795b20"></script>
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
                <i class="far fa-user"></i> <br/> <?=$_SESSION['correo']?>
                </a
              ><br />
            </li>
          </ul>
        </nav>
      </div>
    </header>
    
    <div class="menu">
        <?php
        include('db.php');
        $resultado = $conexion->query("SELECT * FROM `categorias`") or die($conexion->error);
        while ($fila = mysqli_fetch_array($resultado)) {
        //aqui van las categorias?>
        <ul class="nav">
            <li><a> <?php echo $fila['nombreCategoria']; ?></a>
                <ul>
                    <?php
                    $idCategoria = $fila['idcategorias'];
                    $resultado2 = $conexion->query("SELECT * FROM `subcategorias` WHERE categorias_idcategorias1 =".$idCategoria) or die($conexion->error);
                    while ($fila3 = mysqli_fetch_array($resultado2)) {     
                    ?> 
                    <li><a href=<?php echo "listarProductos.php?idsubcategoria=". $fila3['idSubCategoria']; ?>> <?php echo $fila3['nombreSubCategoria']; ?></a>
                    </li>
                    <?php     
        }
        ?>
                </ul>
            </li>
            <?php     
        
        }?>
        </ul>
    </div>
    
    <br>
    <br>
    <form action="busqueda.php" method="post">
    <div class="buscar">
        <h2 class="field" id="searchform">
          <input type="text" id="searchterm" name="buscar" placeholder="Buscar producto" />
          <input type="submit"  value="Buscar" required>
        </h2>
    </div>
    </form>
    <br>
    <br>
    <div class="divQ">
        <div class="div3">
            <h2>Tienda de piezas de coche</h2>
            <h3>RecambiosCostasol es una de las principales tiendas online de piezas
                 de coche, gracias a sus numerosos años de experiencia y a sus miles
                  de clientes satisfechos. Compruébelo usted mismo y quedará
                   impresionado por nuestros servicios y excelentes precios.</h3>
        </div>

        <div class="div4">
            <h2>Marcas de gran calidad</h2>
            <h3>Una amplia selección de fabricantes y repuestos de alta calidad 
                le garantizan una eficiencia constante de su automóvil y seguridad
                 en la carretera. Confíe en las piezas de recambio de marca y
                  en RecambiosCostasol como un provedor seguro.</h3>
        </div>

        <div class="div4">
            <h2>Calidad de equipo original</h2>
            <h3>Todas las piezas que ofrecemos en nuestra gama proceden de 
                proveedores fiables y certificados. Nuestro experimentado equipo de atención al
                   cliente se encuentra a su disposición para ayudarle 
                   en su búsqueda.</h3>
        </div>
    </div>
    <br><br><br><br><br><br><br><br><br>
    
    <h1 class="experiencia">Tu experiencia nos ayuda a mejorar la calidad de nuestros servicios dia a dia</h1>
    <h2 class="h2home">Algunos usuarios ya lo han hecho</h2>
    <br>
  <?php   
  include('db.php');
        $comen = $conexion->query("SELECT * FROM `comentarios` LIMIT 4") or die($conexion->error);
        while ($fila45 = mysqli_fetch_array($comen)) {
        ?>  <div class="single-item">
                <a href="mailto: <?php echo $fila45['email'];?>"><?php echo $fila45['email']; ?></a>
                <p><?php echo $fila45['comment']; ?></p>
            </div>
            
<?php     
        
        }?>
        <br>
        <div class="divC">
        <a class="crear" href="comentarios.php">Añade tu comentario</a>
        </div>
    <br>
    <br>
    <br>
    <img class="imagen" src="img/imagenhom.jpg">
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