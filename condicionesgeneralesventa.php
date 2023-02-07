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
        <p><b><FONT SIZE=6>CONDICIONES GENERALES DE VENTA</font></b></p>
        <br>
   <p><b>Preámbulo</b></p>
   <br>
<p>RecambiosCostasol es una empresa de comercio electrónico especializada en la venta de productos, accesorios y recambios de automoción nuevos y originales procedentes de fabricantes o mayoristas de equipos de automoción (en adelante, los " Productos").
</p>
<br>
<p>
RecambiosCostasol ha trabajado para liberalizar el mercado de recambios de automoción con el fin de ofrecer a los consumidores una amplia gama de recambios originales y nuevos a los mejores precios y en las mejores condiciones de calidad y entrega, gracias a su catálogo único de hasta 1.000.000 de referencias. Para lograr este objetivo, RecambiosCostasol acompaña a sus clientes a lo largo de todo el proceso de compra, con la ayuda de sus expertos mecánicos, plataformas logísticas y publicaciones tutoriales.
</p>
<br>
<p>
La satisfacción del cliente es la clave del éxito de RecambiosCostasol.</p>
<br>
<p>
Las presentes condiciones generales de venta (en adelante denominadas " CGV") se aplican sin restricciones ni reservas a cualquier compra de Productos realizada en el sitio web www.recambioscostasol.store (en adelante denominado " el Sitio") y ofrecida por RecambiosCostasol S.L., sociedad con un capital social de 1.003.006 euros, con domicilio social en Ronda Can Rabada 2, 08860 Castelldefels, Barcelona, España, inscrita con el número de identificación fiscal B64314222 (en adelante denominada " RecambiosCostasol") a sus clientes (en adelante denominados " Cliente").
</p>
<br>
<p>
Ámbito de aplicación de las CGV - Aceptación y modificaciones
Toda compra de un Producto en el Sitio implica la aceptación expresa y sin reservas por parte del Cliente de las CGV y de la Política de Protección de Datos Personales que el Cliente reconoce haber leído, marcando la casilla prevista a tal efecto al crear su cuenta y validar su pedido.
</p>
<br>
<p>Las CGV sustituyen a todas las versiones anteriores de las condiciones generales de venta, que por lo tanto dejan de ser aplicables.</p>
<br>
<p></p>Las CGV constituyen el acuerdo completo entre RecambiosCostasol y el Cliente. Si alguna de las disposiciones de las CGV resultara inválida o inaplicable, no afectará a las demás disposiciones.</p>
<br>
<p>Ninguna tolerancia o demora por parte de RecambiosCostasol en el ejercicio de sus derechos perjudicará o restringirá los derechos de RecambiosCostasol, y ninguna renuncia a tales derechos o renuncia a cualquier incumplimiento contractual se considerará como una renuncia a cualquier otro derecho o a cualquier incumplimiento contractual subsiguiente.
</p>
<br>
<p>
RecambiosCostasol se reserva el derecho de modificar sus CGV en cualquier momento, en particular para desarrollar sus servicios o para cumplir con la nueva normativa aplicable. Las CGV aplicables serán las vigentes en la fecha del pedido del Cliente.
</p>
<br>

<p>Por lo tanto, se recomienda que el Cliente consulte regularmente las CGV en el Sitio para estar informado de cualquier nueva actualización.</p>
<br>
<p>
1. Pedido
Los productos a la venta en el Sitio están reservados a personas con plena capacidad legal para realizar pedidos en el Sitio. Se especifica que los Productos están destinados al uso personal del Cliente y no deben estar relacionados con su actividad profesional, incluida la reventa o distribución del Producto.
</p>
<br>
<p>
1.1 Crear una cuenta de cliente
Antes de realizar cualquier pedido, el Cliente debe crear una cuenta en el Sitio. Se puede acceder a la sección "Me identifico" directamente desde la barra de menús de la página de inicio haciendo clic en la sección "Mi cuenta".
</p>
<br>
<p>
La información necesaria para crear la cuenta es: una dirección de correo electrónico válida y una contraseña. En el momento del primer pedido, se solicitará más información al Cliente: apellidos, nombre, un número de teléfono, una dirección de facturación, un número de identificación fiscal (NIF), el nombre de la empresa y una dirección de correo electrónico válida que corresponderá posteriormente al identificador del Cliente.
</p>
<br>
<p>
En cada nueva visita, si desea realizar un pedido o consultar su área "Mi Cuenta", el Cliente deberá identificarse previamente con los datos estrictamente personales y confidenciales que haya elegido.
</p>
<br>
<p>
El Cliente debe preservar la confidencialidad de sus identificadores. En caso de pérdida, olvido o uso indebido de sus identificadores por parte de un tercero, el Cliente deberá informar inmediatamente a RecambiosCostasol poniéndose en contacto con el Servicio de Atención al Cliente de RecambiosCostasol.
</p>
<br>
<p>
RecambiosCostasol informa al Cliente que la creación de su cuenta personal en uno de los sitios web que pertenecen al Grupo RecambiosCostasol es una sola cuenta. Sus identificadores y contraseñas permanecen sin cambios para cualquier conexión a los sitios web de RecambiosCostasol. Si el Cliente solicita la eliminación de sus datos personales vinculados a su cuenta de cliente, la eliminación se realizará automáticamente en todos los sitios web de RecambiosCostasol.
</p>
<br>
<p>
1.2 Compra
Para realizar una compra, el Cliente debe realizar su pedido directamente en el Sitio.
</p>
<br>
<p>
El Cliente selecciona los Productos correspondientes a su búsqueda y los añade a su cesta. En esta etapa, se le podrá pedir al Cliente que proporcione cierta información sobre la categoría de su vehículo (por ejemplo: número de bastidor, número de matrícula, marca y modelo) para que su elección de la selección de productos mostrada se adapte a su vehículo y a las especificaciones de los fabricantes de automóviles.
</p>
<br>
<p>
Se especifica que es responsabilidad única y exclusiva del Cliente:
</p>
<br>
<p>
Evaluar las características del Producto de acuerdo con sus características técnicas y las necesidades o requisitos para los que está destinado o instalado; tanto como
determinar que el Producto suministrado por RecambiosCostasol es apto para el correcto mantenimiento y / o reparación a realizar sobre el mismo, asumiendo la responsabilidad del Cliente en todo caso; y
como resultado de lo anterior, el Cliente libera a RecambiosCostasol de cualquier evaluación, verificación o control de la precisión o idoneidad de cualquier Producto para el uso específico para el que está destinado a ser utilizado o instalado. La búsqueda por matrícula, número de bastidor o marca, modelo y tipo es indicativa. El uso de estas herramientas de búsqueda no exime al Cliente de verificar que el Producto seleccionado es equivalente al instalado en su vehículo.
</p>
<br>
<p>
El Cliente debe proporcionar toda la información necesaria para la correcta ejecución de la entrega del Producto: nombre, apellidos, dirección de entrega y, en caso de ser diferente, número de teléfono.
</p>
<br>
<p>
Si el Cliente ya tiene una cuenta en el Sitio y desea validar su pedido, será redirigido automáticamente a una página de identificación y deberá identificarse en la pestaña "Ya soy cliente" de la sección "Me identifico". Si se trata de un cliente nuevo, deberá seguir los pasos para crear una cuenta en la pestaña "Nuevo cliente" de la sección "Me identifico".
</p>
<br>
<p>
En esta etapa, el pedido se recapitula indicando los siguientes elementos: Producto(s), cantidad(es), precio unitario, posibles descuentos, método de entrega, gastos de envío e importe total del pedido.
</p>
<br>
<p>
El Cliente puede volver a su pedido, completarlo, modificarlo o cancelarlo hasta que lo haya validado. Una vez que el Cliente haya hecho clic en la pestaña "Validar mi cesta", el pedido será validado.
</p>
<br>
<p>
Esta validación está sujeta al conocimiento previo y a la aceptación expresa y sin reservas, a través de una casilla de verificación, de las presentes CGV y de la Política de Protección de Datos Personales por parte del Cliente, e implica una obligación de pago.
</p>
<br>
<p>
Una vez validada la cesta, el Cliente elegirá su dirección de entrega y, a continuación, su forma de pago.
</p>
<br>
<p>
RecambiosCostasol invita al Cliente a comprobar, completar o, en su caso, introducir su número de identificación fiscal antes de validar un pedido superior a 3.000€ con IVA incluido.
</p>
<br>
<p>
Una vez realizados estos tres pasos, la validación de la cesta, la elección del modo de entrega y la elección de la forma de pago por parte del Cliente, RecambiosCostasol envía al Cliente un correo electrónico validando el pedido en un plazo de veinticuatro (24) horas a partir del registro del pedido del Cliente. Si el Cliente no recibe el correo electrónico de validación del pedido en el plazo especificado, RecambiosCostasol le invita a ponerse en contacto con el Servicio de Atención al Cliente de RecambiosCostasol.
</p>
<br>
<p>
La venta se considera definitiva a partir del registro del pedido, tras recepción del correo electrónico de validación del pedido. A partir de ese momento, el estado del pedido aparece como "Pedido validado" en la sección "Mis pedidos" del área "Mi cuenta" del Cliente.
</p>
<br>
<p>
Se especifica que RecambiosCostasol cobrará el importe total del pedido en el momento del envío de confirmación,se notificará por correo electrónico al Cliente.
</p>
<br>
<p>
Algunos pedidos pueden requerir documentos adicionales antes de ser validados por RecambiosCostasol. En este caso, el Cliente deberá enviar los documentos necesarios para su validación por cualquier medio (e-mail, carta). En caso de no recibir o recibir documentos que RecambiosCostasol considere no conformes en un plazo de treinta (30) días, RecambiosCostasol se reserva el derecho de cancelar el pedido parcial o íntegramente.
</p>
<br>
<p>
En caso de una incidencia relacionada con el pedido del Cliente, en particular una incidencia en el pago o suministro, un problema relacionado con la indisponibilidad de los Productos o una anomalía en el pedido, RecambiosCostasol se compromete a informar al Cliente a través de la información facilitada por el mismo en el momento de la última actualización realizada en su cuenta.
</p>
<br>
<p>
1.3 Posibilidad de anular el pedido antes de la preparación
RecambiosCostasol ofrece al Cliente la posibilidad de cancelar su pedido total o parcialmente antes de que RecambiosCostasol prepare el pedido. El Cliente ya no podrá cancelar el pedido a partir del estado del mismo: "En preparación" indicado directamente en la sección "Mis pedidos" del área "Mi cuenta" del Cliente.
</p>
<br>
<p>
Para realizar una cancelación (total o parcial), el Cliente puede hacerlo:
</p>
<p>
Ya sea directamente en el Sitio desde su área "Mi cuenta" en la sección "Mis pedidos";
por correo electrónico enviado a la siguiente dirección contacto@recambioscostasol.com especificando el número de pedido;
por teléfono en el Servicio de Atención al Cliente de RecambiosCostasol llamando al n° 936 07 20 36 (número sin recargo, precio de una llamada local, de lunes a viernes de 9:00 a 19:00 horas, excepto festivos), indicando el número de pedido.
En caso de cancelación de los Productos por parte del Cliente o de RecambiosCostasol antes de que se confirmará el pedido, el Cliente no habrá efectuado ningún pago y RecambiosCostasol no realizará ningún reembolso. Sin embargo, si el Cliente desea cancelar su pedido después de la confirmación del mismo, deberá remitirse a los procedimientos de devolución y reembolso previstos en el artículo 8.1 "Derecho de retractación" mencionado a continuación.
</p>
<br>
<p>
2. Disponibilidad del producto
Los Productos ofrecidos son los que figuran en el Sitio, en función dentro de los límites de las existencias disponibles en RecambiosCostasol (previamente negociadas con sus proveedores).
</p>
<br>
<p>
El Cliente reconoce que la disponibilidad de los Productos, proporcionada por RecambiosCostasol en el momento de realizar el pedido y tras la recepción del correo electrónico de validación del pedido, se proporciona únicamente con fines informativos. A pesar de la actualización constante de las existencias, puede producirse una alteración en la disponibilidad entre las existencias indicadas en el Sitio durante la validación del pedido por parte del Cliente y las existencias realmente disponibles. En este contexto, se proporcionan indicaciones sobre la disponibilidad de los Productos en el momento de la confirmación del pedido.
</p>
<br>
<p>
En caso de falta de existencias, RecambiosCostasol buscará un Producto equivalente con las mismas características técnicas, calidad y precio, y propondrá un Producto de sustitución al Cliente.
</p>
<br>
<p>
Si hay una diferencia de precio entre el Producto pedido y el Producto entregado, se tratará de la siguiente manera:
</p>
<br>
<p>
En caso de que el valor del Producto reemplazado sea mayor que el importe del Producto inicialmente pedido por el Cliente, la diferencia del mismo no será facturada al Cliente. RecambiosCostasol asumirá el coste de la diferencia y facturará al Cliente al importe del precio del Producto solicitado.
En caso de que el valor del Producto de reemplazo sea inferior al importe inicialmente ordenado por el Cliente, la diferencia de este se ajustará a favor del Cliente. RecambiosCostasol actualizará el precio, a la baja, tras la confirmación del pedido y el importe cobrado al Cliente será el precio del Producto de reemplazo.
El Cliente podrá rechazar el Producto de sustitución siguiendo los procedimientos de devolución previstos en el artículo 8. de estas CGV.
</p>
<br>
<p>
Si RecambiosCostasol no encuentra ningún Producto que cumpla los criterios anteriores, se notificará al Cliente directamente en su área "Mi cuenta" Cliente en la sección "Mis pedidos" mediante una mención "Cancelado", así como por correo electrónico, tan pronto como sea posible. RecambiosCostasol procederá entonces a la anulación parcial o total del pedido.
</p>
<br>
<p>
RecambiosCostasol se reserva el derecho de modificar en cualquier momento su catálogo de Productos disponibles en el Sitio. Cada Producto queda presentado en el Sitio con una descripción que contiene sus principales características técnicas.
</p>
<br>
<p>
3. Precio
El precio de los Productos que aparecen en el Sitio se expresa en Euros (€) con todos los impuestos (IVA incluido), incluido el IVA español en vigor el día del pedido. Cualquier cambio en el tipo de IVA podrá reflejarse en el precio de los Productos.
</p>
<br>
<p>
Los precios indicados no incluyen los gastos de envío, cuyo importe varía en función del método de entrega elegido por el Cliente en el momento de la validación del pedido.
</p>
<br>
<p>
Los gastos de envío son fijos y se indican en el Sitio en el momento de la validación del pedido por parte del Cliente. Los gastos de envío se añaden al precio de los Productos solicitados.
</p>
<br>
<p>
RecambiosCostasol se reserva el derecho de modificar sus precios en cualquier momento, entendiéndose, sin embargo, que el precio del catálogo indicado en línea el día del pedido será el precio aplicable al Cliente, salvo que exista un error. En este caso se informará al Cliente con la mayor brevedad posible.
</p>
<br>
<p>
Bajo los precios de venta aparecen los precios de referencia recomendados por los fabricantes de equipos. Esta visión de los precios de referencia se proporciona a título informativo para el Cliente.
</p>
<br>
<p>
Como parte de las acciones promocionales, RecambiosCostasol podrá distribuir cupones de descuento de forma gratuita. La utilización de estos cupones de descuento se define en las condiciones generales de utilización.
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