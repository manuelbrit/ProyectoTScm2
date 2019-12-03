<%@page import="modelo.Pasajero"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="modelo.Modelo"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integ
    rity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <!--SOBRE NOSOTROS-->
    <link rel="stylesheet" href="principal.css" />
    <script src="principal.js"></script>

    <title>Brito | Rent Car</title>
  </head>
  <body>

    <div class="jumbotron">
             <h1 class="display-4">SCM² Alquileres</h1>
             <p class="lead">La mejor opción para tu día a día</p>
             <hr class="my-4">
             <p>Pensado para llegar a tu destino, sin importar las circunstancias</p>
             <a class="btn btn-primary btn-lg" href="index3.html" role="button">¡Conoce nuestras politicas!</a>
           </div>

           <div class="container">
               <div class="row">

               <div class="card-deck col-sm">
                   <div class="card border-dark" style="width: 15rem;">
                       <img src="../resourcesGlobal/miniCooper.png" class="card-img-top" alt="Jazz">
                       <div class="card-body">
                         <h5 class="card-title">Class Mini Car</h5>
                         <p class="card-text">Extrovertido y abierto, cargado de dinamismo y energía. Captura y comparte esos momentos en la carretera. transmitiendo un aire de sofisticación a la luz del sol.</p>
                         <a href="index4.html" class="btn btn-primary">Consultar Precio</a>
                       </div>
                   </div>
               </div>

               <div class="card-deck col-sm">
                 <div class="card border-dark" style="width: 15rem;">
                     <img src="../resourcesGlobal/fordFiesta.png" class="card-img-top" alt="Avanza">
                     <div class="card-body">
                       <h5 class="card-title">Ford Fiesta</h5>
                       <p class="card-text">Un diseño que se acoplara a tus gustos, Con la tecnología más avanzada y funciones de conducción innovadoras pensadas para que te diviertas al máximo cuando estés al volante.</p>
                       <a href="index4.html" class="btn btn-primary">Consultar Precio</a>
                     </div>
                 </div>
               </div>

               <div class="card-deck col-sm">
                 <div class="card border-dark" style="width: 15rem;">
                     <img src="../resourcesGlobal/alfaRomero.png" class="card-img-top" alt="Fortuner">
                     <div class="card-body">
                       <h5 class="card-title">Alfa Romero Giulia</h5>
                       <p class="card-text">Se distingue por su diseño italiano característico gracias a sus perfectas proporciones, la simplicidad de las formas y la calidad del acabado. Su perfil perfecto para la libertad de movimiento.</p>
                       <a href="index4.html" class="btn btn-primary">Consultar Precio</a>
                     </div>
                   </div>
               </div>

               <div class="card-deck col-sm">
                  <div class="card border-dark" style="width: 15rem;">
                     <img src="../resourcesGlobal/fordKuga.png" class="card-img-top" alt="Fortuner">
                     <div class="card-body">
                       <h5 class="card-title">Ford Kuga</h5>
                       <p class="card-text">Tu eliges la velocidad a la que deseas conducir y el sistema lo mantendrá por ti. Si el sensor detecta un vehículo delante, ralentizará la velocidad para mantener una distancia preestablecida.</p>
                       <a href="index4.html" class="btn btn-primary">Consultar Precio</a>
                     </div>
                   </div>
               </div>

               </div>
           </div>

  </body>
</html>
