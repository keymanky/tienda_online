<?php
	//variables de conecion
	include("conectar.php");
	//conectamos a la base de datos
	$display_block = "<center><h1>Sucursal Villa de Cortes</h1></center>";	
	$mysqli = mysqli_connect($servidor , $usuario , $contrasena , $base_datos);
	//Creamos la consulta
	$get_item_sql = "SELECT c.id as cat_id, c.cat_title, si.item_title, si.item_price, si.item_desc, si.item_image FROM store_items AS si LEFT JOIN store_categories AS c on c.id = si.cat_id WHERE si.id = '".$_GET["item_id"]."'";
	$get_item_res = mysqli_query($mysqli, $get_item_sql) or die(mysqli_error($mysqli));
	//Si no hay datos
	if (mysqli_num_rows($get_item_res) < 1) 
	   $display_block .= "<h4>Empresa Norte Americana, dedicada a la fabricaci&oacute;n de: filtros, bombas de agua, calentadores, term&oacute;metros acu&aacute;ticos, bombas de calor, y v&aacute;lvulas.
</h4><table><tr><td><img src=\"mapa.PNG\" / >
</td></tr></table>";
	else 
	{
	//Informacion del articulo lo cargamos en varibles
	   while ($item_info = mysqli_fetch_array($get_item_res)) 
	   {
		   $cat_id = $item_info['cat_id'];
		   $cat_title = strtoupper(stripslashes($item_info['cat_title']));
		   $item_title = stripslashes($item_info['item_title']);
		   $item_price = $item_info['item_price'];
		   $item_desc = stripslashes($item_info['item_desc']);
		   $item_image = $item_info['item_image'];
		}
	   //Consulta colores
	   $get_colors_sql = "SELECT item_color FROM store_item_color WHERE item_id = '" . $_GET["item_id"] . "' ORDER BY item_color";
	   $get_colors_res = mysqli_query($mysqli, $get_colors_sql) or die(mysqli_error($mysqli));	   
	   //Creamos un link donde el usuario	
	   $display_block .= "Usted esta en:<br/>
	   <i><a href='index.php?cat_id=" . $cat_id . "'>" . $cat_title . "</a></i> &gt; <i>" . $item_title . "</i>
	   &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;";
	   
	   
	   //Imprimimos en forma de tabla
	   $display_block .=
	   "<center><table>
	   		<tr align= 'center'>
	   			<td valign='middle'><img src='" . $item_image . "'/></td>
				<td valign='middle' colspan='2'>";		
				$display_block .= "<form method='post' action='addtocart.php'>";
				//Preparamos el otro td
					   if (mysqli_num_rows($get_colors_res) > 0) 
					   {                   //cuenta las duplas q solicitamos
							$display_block .=
							"<p><strong>Tipo de Material:</strong><br/>
							<select name='sel_item_color'>";
							while ($colors = mysqli_fetch_array($get_colors_res)) 
							{
							   $item_color = $colors['item_color'];
							   $display_block .= "<option value='" . $item_color . "'>" . $item_color . "</option>";
						    }
						   $display_block .= "</select>";
					   }	
					   //Consulta las tallas
					   $get_sizes_sql = "SELECT item_size FROM store_item_size WHERE item_id = " . $_GET["item_id"] . " ORDER BY item_size";
					   $get_sizes_res = mysqli_query($mysqli, $get_sizes_sql) or die(mysqli_error($mysqli));
					
					   if (mysqli_num_rows($get_sizes_res) > 0) 
					   {
						   $display_block .= "<p><strong>Tama&ntilde;o en pulgadas</strong><br/>
						   <select name='sel_item_size'>";
					
						   while ($sizes = mysqli_fetch_array($get_sizes_res)) 
						   {
							  $item_size = $sizes['item_size'];
							  $display_block .= "<option value='" . $item_size. "'>" . $item_size . "</option>";
						   }
						   $display_block .= "</select>";
					   }
					   
					   
					   $display_block .= "
					   <p><strong>Cantidad:</strong>
					   <select name='sel_item_qty'>";
					
					   for($i=1; $i<11; $i++) 
					   {
						   $display_block .= "<option value='" . $i . "'>" . $i. "</option>";
					   }
	   	   			$display_block .= "</select>
					<input type='hidden' name='sel_item_id' value='" . $_GET["item_id"]. "'/>
	   				<p><img src='imagenes/cart.jpg'><input type='submit' name='submit' value='Agregar'/></p>";
	   		
	   $display_block .= "</form></td>
	   		</tr>			
			
	   		<tr align= 'center'>
	   			<td valign='middle'>Descripci&oacute;n:<br/>" . $item_desc. "
				</td>
			</tr>
		</table></center>";	   
	   //Liberamos la consultas
	   mysqli_free_result($get_sizes_res);
	   mysqli_free_result($get_item_res);
	   mysqli_free_result($get_colors_res);	   	      
	}
	//Cerramos la conexion
	mysqli_close($mysqli);
	?>