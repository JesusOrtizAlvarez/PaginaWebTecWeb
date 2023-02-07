<?php
$servidor="mysql:dbname=".u678789567_web2.";host=".SERVIDOR;


try{


    $pdo=new PDO($servidor,USUARIO,PASSWORD,
                array(PDO:: MYSQL_ATTR_INIT_COMMAND=>"SET NAMES utf8")
            );
    //echo "<script>alert('Conectado...')</script>";

}catch(PDOExcpetion $e){

    //echo "<script>alert('Error...')</script>";
}