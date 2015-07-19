		<?php
			//variables de conecion
			include("conectar.php");
			//conectamos a la base de datos
			$mysqli = mysqli_connect($servidor , $usuario , $contrasena , $base_datos);
			//La variable display_block se concatenara cada vez para mostrar en pantal
			$display_block .= "<font color=\"#000\"><h1>Categorias</h1>
			<p><h2>Seleccione una categoria para ver los productos.</h2></p>";
			//Cadena con consulta a la Tabla con los productos Tabla(id, producto, descripcion) 
			$get_cats_sql = "SELECT id, cat_title, cat_desc FROM store_categories ORDER BY cat_title";
			//Ejecuta la consulta
			$get_cats_res =  mysqli_query($mysqli, $get_cats_sql) or die(mysqli_error($mysqli));
			//Si no existe alguna tupla en la tabla (Sin no tenemos articulos disponibles)
			if (mysqli_num_rows($get_cats_res) < 1) 
			   $display_block = "<p>Lo sentimos, por el momento no tenemos disponible.</p>"; 
			else 
			{
			   //Ciclo que recupera todos los articulos
			   while ($cats = mysqli_fetch_array($get_cats_res)) 
			   {
					$display_block .= "<br />";
					//Componenetes de cada articulo para cada barrida
					$cat_id  = $cats['id'];
					$cat_title = strtoupper(stripslashes($cats['cat_title']));
					$cat_desc = stripslashes($cats['cat_desc']);
					//Creamos el link con el titiulo del articulo
					$display_block .= "<a href='" . $_SERVER["PHP_SELF"] . "?cat_id=" . $cat_id. "'>" .$cat_title. "</a><br />";
					//Debajo añadimos la descripcion
					$display_block .= $cat_desc;
					//Si no ocurrio un error al crear el link
					if (isset($_GET["cat_id"])) 
					{
						//Si se ha tecleado en un articulo
						if ($_GET["cat_id"] == $cat_id) 
						{
						   //Creamos la cadena de consulta
						   $get_items_sql = "SELECT id, item_title, item_price FROM store_items WHERE cat_id = '".$cat_id."' ORDER BY item_title";
						   //Ejecuta la consulta:  Muestre los subarticulos del articulo seleccionado ordenados por titulo con el precio
						   $get_items_res = mysqli_query($mysqli, $get_items_sql) or die(mysqli_error($mysqli));
			
						   //Si hay cero subarticulos
						   if (mysqli_num_rows($get_items_res) < 1) 
								$display_block = "<p>Lo sentimos, por el momento no tenemos disponible</p>";
						   else 
						   {
								//Los imprimira en forma de lista				   
								$display_block .= "<ul>";
								//Ciclo que recupera las tuplas completas (renglon de todos los subarticulos)
								while ($items = mysqli_fetch_array($get_items_res)) 
								{
								   $item_id  = $items['id'];
								   $item_title = stripslashes($items['item_title']);
								   $item_price = $items['item_price'];
								   //Crea otro link para ir directamente a la descripcion del subarticulo						
								   $display_block .= "<li><a href='index.php?item_id=" . $item_id . "'>" . $item_title . "</a>"; 
								   //Anadimos el precio a lado del link
								   $display_block .= $item_price. "</li>";
								}
								//cerramos la lista
								$display_block .= "</ul>";
							}
			
							//Liberamos la consulta de las subcategorias  o subarticulos
							mysqli_free_result($get_items_res);
			
						}
					}
				}
			}
			//Liberamos la consulta de los articulos
			mysqli_free_result($get_cats_res);
			
			//Cerramos la conexion
			mysqli_close($mysqli);
		?>