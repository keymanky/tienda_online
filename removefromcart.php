<?php
session_start();
//variables de conecion
include("conectar.php");
//conectamos a la base de datos
$mysqli = mysqli_connect($servidor , $usuario , $contrasena , $base_datos);
if (isset($_GET["id"])) {
    $delete_item_sql = "DELETE FROM store_shoppertrack WHERE id = '".$_GET["id"]."' and session_id = '".$_COOKIE["PHPSESSID"]."'";
    $delete_item_res = mysqli_query($mysqli, $delete_item_sql) or die(mysqli_error($mysqli));

    //redirect to showcart page
    header("Location: showcart.php");
    exit;

} else {
    //send them somewhere else
    header("Location: index.php");
    exit;
}
?>