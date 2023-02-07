

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Panel de Control Administrador</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <link href="css/formulario5.css" rel="stylesheet" />
    <link href="css/styles.css" rel="stylesheet" />
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
        crossorigin="anonymous"></script>
</head>

<body class="sb-nav-fixed">
    <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
        <!-- Navbar Brand-->
        <a class="navbar-brand ps-3" href="admin2.php">Recambios CostaSol</a>
        <!-- Sidebar Toggle-->
        <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i
                class="fas fa-bars"></i></button>

        </form>

        <!-- barra izq-->
    </nav>
    <div id="layoutSidenav">
        <div id="layoutSidenav_nav">
            <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                <div class="sb-sidenav-menu">
                    <div class="nav">
                        <div class="sb-sidenav-menu-heading">Principal</div>
                        <a class="nav-link" href="admin2.php">
                            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                            Panel de Control
                        </a>
                        <div class="sb-sidenav-menu-heading">Acceso Directo</div>
                        <a class="nav-link collapsed" href="Usuarioadmin.php" >
                            <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                            Usuarios
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>

                        <a class="nav-link collapsed" href="ProductosAdmin.php">
                            <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                            Productos
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>

                        <a class="nav-link collapsed" href="" >
                            <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                            Reseñas
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>

                        <a class="nav-link collapsed" href="ConsultasAdmin.php" >
                            <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                            Consultas
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Has iniciado sesión como:</div>
                        Administrador
                    </div>
                    <div class="small" href="../logout.php"> Cerrar Sesion</div>
            </nav>
        </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="form">
                        
                        <form action="añadirProd.php" method="POST" enctype="multipart/form-data">
                            <p>Nombre</p>
                            <label for="nombre">Nombre</label>
                            <br>
                            <input type="text" name="nombre" placeholder="Nombre" required>
                                                         <p>Categoria</p>
                            <label for="fabricante">Categoria</label>
                            <br>
                           <?php
	include_once('DatosConexion.php');
	include_once('db.php');

$consulta='select * from subcategorias';
$resultado=mysqli_query($conexion,$consulta);
  
echo "<select name='subcategoria'>";
while($fila=mysqli_fetch_array($resultado)){
    echo "<option value='".$fila['idSubCategoria']."'>".$fila['nombreSubCategoria']."</option>";
}
echo "</select>";
	?>
                            <p>Precio</p>
                            <label for="precio">Precio</label>
                            <br>
                            <input type="precio" name="precio" placeholder="€" required>
                            <p>Descripcion</p>
                            <label for="descripcion">Descripcion</label>
                            <br>
                            <input type="text" name="descripcion" placeholder="Descripción" required></textarea>
                            <br>
                            <p>Referencia</p>
                            <label for="referencia">referencia</label>
                            <br>
                            <input type="text" name="referencia" placeholder="Referencia" required></textarea>
                            <br>
                            <p>Marca</p>
                            <label for="marca">Marca</label>
                            <br>
                            <input type="marca" name="marca" placeholder="Marca" required></textarea>
                            <br>
                            <p>Fabricante</p>
                            <label for="fabricante">Fabricante</label>
                            <br>
                            <input type="fabricante" name="fabricante" placeholder="Fabricante" required></textarea>
                            <br>
                            <p>Imagen</p>
                            <label for="fabricante">Imagen</label>
                            <br>
                            <input type="file" name="imagen" placeholder="imagen" id="imagen"></textarea>
                            <br>
                            <br>
                            <br>
                            <br>
                            <input type="submit" value="Agregar producto">
                        </form>
                    </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
 
    </body>
</html>
