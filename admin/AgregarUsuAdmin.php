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
                        
                        <form action="añadirUsu.php" method="POST" enctype="multipart/form-data">
                            <p>Nombre</p>
                            <label for="nombre">Nombre</label>
                       
                            <input type="text" name="nombre" placeholder="Nombre" required>
                            <p>Correo</p>
                            <label for="fabricante">Correo</label>
                            <input type="text" name="correo" placeholder="correo@gmail.com" required>
                            <br>
                            <p>Contraseña</p>
                            <label for="precio">Contraseña</label>
                      
                            <input type="password" name="contrasena" placeholder="Contraseña" required>
                            <p>Numero Telefono</p>
                            <label for="descripcion">Numero Telefono</label>
                         
                            <input type="text" name="NumTelefono" placeholder="943324332" required></textarea>
                            <br>
                            <p>DNI</p>
                            <label for="referencia">DNI</label>

                            <input type="text" name="DNI" placeholder="1111111A" required></textarea>
                            <br>
                            <p>Direccion</p>
                            <label for="marca">Direccion</label>

                            <input type="marca" name="direccion" placeholder="Direccion" required></textarea>
                            <br>
                            <p>Codigo Postal</p>
                            <label for="fabricante">Codigo Postal</label>
                            <input type="fabricante" name="codPostal" placeholder="Codigo Postal" required></textarea>
                            <br>
                            <p>¿Es Administrador?</p>
                            <label for="fabricante">¿Es Administrador?</label>
                            <input type="admin" name="esAdmin" placeholder="1 si es Admin, 0 si no" required></textarea>
                            <br>
                            <br>
                            <br>
                            <br>
                            <input type="submit" value="Agregar usuario">
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
