<?php
session_start();
?>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Pagina Principal</title>
    <link rel="stylesheet" href="css/estiloArriba.css" />
    <link rel="stylesheet" href="css/estiloAbajo.css" />
    <link rel="stylesheet" href="css/politicasprivacidad6.css" />
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
              <a href="carrito.php">
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
    

    <div class = "contenedortexto">
        <p><b><FONT SIZE=6>POLÍTICA DE PRIVACIDAD</font></b></p>
        <br>
    <p>

El presente Política de Privacidad establece los términos en que RecambiosCostasol usa y protege la información que es proporcionada por sus usuarios al momento de utilizar su sitio web. Esta compañía está comprometida con la seguridad de los datos de sus usuarios. Cuando le pedimos llenar los campos de información personal con la cual usted pueda ser identificado, lo hacemos asegurando que sólo se empleará de acuerdo con los términos de este documento. Sin embargo esta Política de Privacidad puede cambiar con el tiempo o ser actualizada por lo que le recomendamos y enfatizamos revisar continuamente esta página para asegurarse que está de acuerdo con dichos cambios.
</p>
<br>
<p><b>Información que es recogida</b></p>
<br>
<p>
Nuestro sitio web podrá recoger información personal por ejemplo: Nombre,  información de contacto como  su dirección de correo electrónica e información demográfica. Así mismo cuando sea necesario podrá ser requerida información específica para procesar algún pedido o realizar una entrega o facturación.
</p>
<br>

<p><b>Uso de la información recogida</b></p>
<br>
<p>
Nuestro sitio web emplea la información con el fin de proporcionar el mejor servicio posible, particularmente para mantener un registro de usuarios, de pedidos en caso que aplique, y mejorar nuestros productos y servicios.  Es posible que sean enviados correos electrónicos periódicamente a través de nuestro sitio con ofertas especiales, nuevos productos y otra información publicitaria que consideremos relevante para usted o que pueda brindarle algún beneficio, estos correos electrónicos serán enviados a la dirección que usted proporcione y podrán ser cancelados en cualquier momento.

RecambiosCostasol está altamente comprometido para cumplir con el compromiso de mantener su información segura. Usamos los sistemas más avanzados y los actualizamos constantemente para asegurarnos que no exista ningún acceso no autorizado.
</p>

<br>
<p><b>Cookies</b></p>
<br>
<p>

Una cookie se refiere a un fichero que es enviado con la finalidad de solicitar permiso para almacenarse en su ordenador, al aceptar dicho fichero se crea y la cookie sirve entonces para tener información respecto al tráfico web, y también facilita las futuras visitas a una web recurrente. Otra función que tienen las cookies es que con ellas las web pueden reconocerte individualmente y por tanto brindarte el mejor servicio personalizado de su web.
</p>
<br>
<p>
Nuestro sitio web emplea las cookies para poder identificar las páginas que son visitadas y su frecuencia. Esta información es empleada únicamente para análisis estadístico y después la información se elimina de forma permanente. Usted puede eliminar las cookies en cualquier momento desde su ordenador. Sin embargo las cookies ayudan a proporcionar un mejor servicio de los sitios web, estás no dan acceso a información de su ordenador ni de usted, a menos de que usted así lo quiera y la proporcione directamente noticias. Usted puede aceptar o negar el uso de cookies, sin embargo la mayoría de navegadores aceptan cookies automáticamente pues sirve para tener un mejor servicio web. También usted puede cambiar la configuración de su ordenador para declinar las cookies. Si se declinan es posible que no pueda utilizar algunos de nuestros servicios.
</p>
<br>
<p><b>Enlaces a Terceros</b></p>
<br>
<p>
Este sitio web pudiera contener en laces a otros sitios que pudieran ser de su interés. Una vez que usted de clic en estos enlaces y abandone nuestra página, ya no tenemos control sobre al sitio al que es redirigido y por lo tanto no somos responsables de los términos o privacidad ni de la protección de sus datos en esos otros sitios terceros. Dichos sitios están sujetos a sus propias políticas de privacidad por lo cual es recomendable que los consulte para confirmar que usted está de acuerdo con estas.
</p>
<br>
<p><b>Control de su información personal</b></p>
<br>
<p>
En cualquier momento usted puede restringir la recopilación o el uso de la información personal que es proporcionada a nuestro sitio web.  Cada vez que se le solicite rellenar un formulario, como el de alta de usuario, puede marcar o desmarcar la opción de recibir información por correo electrónico.  En caso de que haya marcado la opción de recibir nuestro boletín o publicidad usted puede cancelarla en cualquier momento.
</p>
<br>
<p>
Esta compañía no venderá, cederá ni distribuirá la información personal que es recopilada sin su consentimiento, salvo que sea requerido por un juez con un orden judicial.
</p>
<br>
<p>
RecambiosCostasol Se reserva el derecho de cambiar los términos de la presente Política de Privacidad en cualquier momento.
    </p>
  <br>
  <p>
    Esta política de cookies ha sido creada y actualizada por <a href="https://cookiefirst.com">CookieFirst.com</a>  
  </p>
   <br>
   <p>
   Esta tabla de cookies ha sido creada y actualizada por el <a href="https://cookiefirst.com">CookieFirst consent management platform</a>    
   </p>
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