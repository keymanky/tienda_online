<?php
session_start();
//connect to database
//variables de conecion
include("conectar.php");
//conectamos a la base de datos
$mysqli = mysqli_connect($servidor , $usuario , $contrasena , $base_datos);

if (isset($_POST["sel_item_id"])) {
   //validate item and get title and price
    $get_iteminfo_sql = "SELECT item_title FROM store_items WHERE id = '" .$_POST["sel_item_id"]. "'";
    $get_iteminfo_res = mysqli_query($mysqli, $get_iteminfo_sql) or die(mysqli_error($mysqli));

    if (mysqli_num_rows($get_iteminfo_res) < 1) 
	{
   	    //invalid id, send away
   	    header("Location: index.php");
   	    exit;
    }
	else 
	{
   	    //get info
   	    while ($item_info = mysqli_fetch_array($get_iteminfo_res)) {
   	    	$item_title =  stripslashes($item_info['item_title']);
		}

   	    //add info to cart table
   	    $addtocart_sql = "INSERT INTO store_shoppertrack (session_id, sel_item_id, sel_item_qty, sel_item_size, sel_item_color, date_added) VALUES ('".$_COOKIE["PHPSESSID"]."', '".$_POST["sel_item_id"]."', '".$_POST["sel_item_qty"]."', '".$_POST["sel_item_size"]."', '".$_POST["sel_item_color"]."', now())";
  	    $addtocart_res = mysqli_query($mysqli, $addtocart_sql) or die(mysqli_error($mysqli));

   	    //redirect to showcart page
   	    header("Location: showcart.php");
  	    exit;
    }

} else {
    //send them somewhere else
    header("Location: index.php");
    exit;
}
?>