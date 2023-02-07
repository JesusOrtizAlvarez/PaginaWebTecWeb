<?php
session_start();


$mensaje="";

if(isset($_POST['btnAccion'])){

    switch($_POST['btnAccion']){


        case 'Agregar':

            if(is_numeric(openssl_decrypt($_POST['idProductos'],COD,KEY ))){
                $ID=openssl_decrypt($_POST['idProductos'],COD,KEY );
                $mensaje.="Ok idProducto correcto".$ID."<br/>";

            }else{
                $mensaje="Ups... idProducto incorrecto".$ID."<br/>";
            }
            if(is_string(openssl_decrypt($_POST['nombre'],COD,KEY))){
                $NOMBRE=openssl_decrypt($_POST['nombre'],COD,KEY);
                $mensaje.="Ok nombre correcto".$NOMBRE."<br/>";
            }else{$mensaje.="Ups... nombre incorrecto"."<br/>"; break;}

            if(is_numeric(openssl_decrypt($_POST['cantidad'],COD,KEY,))){
                $CANTIDAD=openssl_decrypt($_POST['cantidad'],COD,KEY);
                $mensaje.="Ok cantidad correcta".$CANTIDAD."<br/>";
            }else{$mensaje.="Ups... cantidad incorrecta"."<br/>";break;}

            if(is_numeric(openssl_decrypt($_POST['precio'],COD,KEY))){
                $PRECIO=openssl_decrypt($_POST['precio'],COD,KEY);
                $mensaje.="Ok  precio correcto".$PRECIO."<br/>";
            }else{$mensaje.="Ups... precio incorrecto"."<br/>";break;}

        if(!isset($_SESSION['CARRITO'])){

            $producto=array(
                'idProductos'=>$ID,
                'nombre'=>$NOMBRE,
                'cantidad'=>$CANTIDAD,
                'precio'=>$PRECIO      
            );
            $_SESSION['CARRITO'][0]=$producto;
            $mensaje= "Producto añadido al carrito";

        }else{
            $idProducto=array_column($SESSION['CARRITO'],"idProductos");
            if(in_array($ID,$idProducto)){
                echo"<script>alert('El producto ya esta en el carrito');</script>";
                $mensaje= "";
                }else{
            $numeroProductos=count($_SESSION['CARRITO']);
            $producto=array(
                'idProductos'=>$ID,
                'nombre'=>$NOMBRE,
                'cantidad'=>$CANTIDAD,
                'precio'=>$PRECIO 
                 );

                 $_SESSION['CARRITO'][$numeroProductos]=$producto;
                $mensaje= "Producto añadido al carrito";
                
            }
            //$mensaje= print_r($_SESSION,true);   
}
        break;
        case"Eliminar":
            if(is_numeric( openssl_decrypt($_POST['idProductos'],COD,KEY ))){
                $ID=openssl_decrypt($_POST['idProductos'],COD,KEY);
            
            foreach($_SESSION['CARRITO'] as $indice=>$producto){
               if($producto['idProductos']==$ID){
                   unset($_SESSION['CARRITO'][$indice]);
                   //echo"<script>alert('Elemento borrado...');</script>";
               } 
            }    
            }else{
                $mensaje.="Ups... ID incorrecto".$ID."<br/>";
                }
        break;
        }
}

?>