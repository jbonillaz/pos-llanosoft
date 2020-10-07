<?php
/**
 * 
 */

class ControllerProducts{


        /*========================================
        =        Mostrar Productos.      =
        =============================================*/

        static public function ctrShowProducts($item, $valor){

                $tabla = "productos";

                $reply = ModelProducts::mdlShowProducts($tabla, $item, $valor);

                return $reply;

        }

         /*========================================
        =        Crear productos.      =
        =============================================*/

        static public function ctrCreateProduct(){

                if(isset($_POST["nuevaDescripcion"])){

                        if(preg_match('/^[a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["nuevaDescripcion"]) &&
							preg_match('/^[0-9]+$/', $_POST["nuevoStock"]) &&	
							preg_match('/^[0-9.]+$/', $_POST["nuevoPrecioCompra"]) &&
							preg_match('/^[0-9.]+$/', $_POST["nuevoPrecioVenta"])){

					$ruta = "views/img/products/default/anonimus_product.png";
				
					if(isset($_FILES["nuevaImagen"]["tmp_name"])){

						list($ancho, $alto) = getimagesize($_FILES["nuevaImagen"]["tmp_name"]);
						// var_dump(getimagesize($_FILES["nuevaImagen"]["tmp_name"]));
						$nuevoAncho = 500;
						$nuevoAlto = 500;

						/*========================================
						=        Creacion del directorio donde se 
							guarda la foto del usuario     =
						=============================================*/

						$directorio = "views/img/products/".$_POST["nuevoCodigo"];
						// 0705 son los permisos de lectura y escritura
							mkdir($directorio, 0755);

						/*=============================================
						de acuerdo a ltipo de imagen se colocan
						las funciones poor defecto de PHP
						=============================================*/
						if($_FILES["nuevaImagen"]["type"] == "image/jpeg"){

						/*=============================================
						Guardamos la imagen en el directrorio.
						=============================================*/
						$aleatorio = mt_rand(100,999);

							$ruta = "views/img/products/".$_POST["nuevoCodigo"]."/".$aleatorio.".jpg";
							// cortando la imagen,
							$origen = imagecreatefromjpeg($_FILES["nuevaImagen"]["tmp_name"]);						
							// para que mantenga las mimas propiedades
							$destino = imagecreatetruecolor($nuevoAncho, $nuevoAlto);
							// ajustar la imagen al tamaño de 500x500
							imagecopyresized($destino, $origen, 0, 0, 0, 0, $nuevoAncho, $nuevoAlto, $ancho, $alto);
							// Guardar la imagen en la ruta que le estamos asignando
							imagejpeg($destino, $ruta);
						

						}
						if($_FILES["nuevaImagen"]["type"] == "image/png"){

							/*=============================================
							Guardamos la imagen en el directrorio.
							=============================================*/
							$aleatorio = mt_rand(100,999);
				
							$ruta = "views/img/products/".$_POST["nuevoCodigo"]."/".$aleatorio.".png";
							// cortando la imagen,
							$origen = imagecreatefrompng($_FILES["nuevaImagen"]["tmp_name"]);						
							// para que mantenga las mimas propiedades
							$destino = imagecreatetruecolor($nuevoAncho, $nuevoAlto);
							// ajustar la imagen al tamaño de 500x500
							imagecopyresized($destino, $origen, 0, 0, 0, 0, $nuevoAncho, $nuevoAlto, $ancho, $alto);
							// Guardar la imagen en la ruta que le estamos asignando
							imagepng($destino, $ruta);
						
			
						}
					}

                $tabla = "productos";

				$datos = array("id_categoria" => $_POST["nuevaCategoria"],
						"codigo" => $_POST["nuevoCodigo"],
						"descripcion" => $_POST["nuevaDescripcion"],
						"stock" => $_POST["nuevoStock"],
						"precio_compra" => $_POST["nuevoPrecioCompra"],
						"precio_venta" => $_POST["nuevoPrecioVenta"],
						"imagen" => $ruta);


                                $reply = ModelProducts::mdlEnterProducts($tabla, $datos);

                                if($reply == "ok"){

                                        echo'<script>

						swal({
							  type: "success",
							  title: "El producto ha sido guardado correctamente",
							  showConfirmButton: true,
							  confirmButtonText: "Cerrar"
							  }).then(function(result){
										if (result.value) {

										window.location = "productos";

										}
									})

						</script>';
                                }


                        }else{

				echo'<script>

					swal({
						  type: "error",
						  title: "¡El producto no puede ir con los campos vacíos o llevar caracteres especiales!",
						  showConfirmButton: true,
						  confirmButtonText: "Cerrar"
						  }).then(function(result){
							if (result.value) {

							window.location = "productos";

							}
						})

			  	</script>';
			}
                }


        }

}