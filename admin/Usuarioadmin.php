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
                           
                            <a class="nav-link collapsed" href="ProductosAdmin.php" >
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Productos
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>

                            <a class="nav-link collapsed" href="reseñasAdmin.php">
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
                        <div class="small">   Has iniciado sesión como: </div>
                        Administrador
                        <a class="nav-link collapsed" href="../logout.php" >Cerrar Sesion </a>
                    </div>
                </nav>
            </div>
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid px-4">
                    <h1 class="mt-4">Usuarios</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item"><a href="admin2.php">Dashboard</a></li>
                        <li class="breadcrumb-item active">Usuarios</li>
                    </ol>

                    <div class="card mb-4">
                        <div class="card-header">
                            <i class="fas fa-table me-1"></i>
                            Tabla de Usuarios <a href="AgregarUsuAdmin.php" class="btn btn-primary btn-sm" style="position: absolute; right: 0;">Agregar</a>
                        </div>
                        <div class="card-body">
                            <div class="site-section">
                                <div class="container">
                                    <div class="row mb-5">
                                        <form class="col-md-12" method="post">
                                            <div class="site-blocks-table">
                                                <table class="table table-bordered">
                                                    <thead>
                                                        <br>
                                                        <tr>
                                                            <th class="product-thumbnail">Nombre</th>
                                                            <th class="product-name">Correo</th>
                                                            <th class="product-price">Numero Telefono</th>
                                                            <th class="product-total">Editar</th>
                                                            <th class="product-remove">Eliminar</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>

                                                <?php
                                                include('db.php');
                                                $res = "SELECT * FROM usuario";

                                                $sql = mysqli_query($conexion, $res);

                                                while ($fila = mysqli_fetch_array($sql)) {
                                                    ?>
                                                        <tr>
                                                            <td class="product-thumbnail">
                                                                <?php echo $fila[4] ?>
                                                            </td>
                                                            <td class="product-name">
                                                                <h2 class="h5 text-black">
                                                                    <?php echo $fila[1] ?>
                                                                </h2>
                                                            </td>
                                                            <td>
                                                                <?php echo $fila[3] ?>
                                                            </td>
                                                            
                                                            <td><a href="<?php echo"editarUsuAdmin.php?idUsu=". $fila['idUsuario']; ?>" class="btn btn-primary btn-sm">Editar</a></td>
                                                            <td><a href="<?php echo"eliminarUsuAdmin.php?idUsu=". $fila['idUsuario']; ?>" class="btn btn-primary btn-sm" >X</a></td>
                                                        </tr>
                                                        <?php }
                                                 ?>

                                                    </tbody>
                                                </table>
                                            </div>
                                        </form>
                                    </div>
                                </div>


                                <script
                                    src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                                    crossorigin="anonymous"></script>
                                <script src="js/scripts.js"></script>
                                <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
                                    crossorigin="anonymous"></script>
                                <script src="assets/demo/chart-area-demo.js"></script>
                                <script src="assets/demo/chart-bar-demo.js"></script>
                                <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
                                    crossorigin="anonymous"></script>
                                <script src="js/datatables-simple-demo.js"></script>
</body>

</html>