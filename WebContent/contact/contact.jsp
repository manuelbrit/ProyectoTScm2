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
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
      integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
      crossorigin="anonymous"
    />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

    <link rel="stylesheet" href="contact.css" />
    <script src="contact.js"></script>

    <title>Brito | Rent Car</title>
  </head>
  <body>
    <div class="container">
      <div class="innerwrap">
        <section class="section1 clearfix">
          <div class="textcenter">
            <span class="shtext">Contactanos</span>
            <span class="seperator"></span>
            <h1>Dejanos un mensaje</h1>
          </div>
        </section>

        <section class="section2 clearfix">
          <div class="col2 column1 first">
            <script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>
            <div
              class="sec2map"
              style="overflow:hidden;height:550px;width:100%;"
            >
              <div id="gmap_canvas" style="height:100%;width:100%;"></div>
              <div>
                <small
                  ><a href="http://embedgooglemaps.com">
                    embed google maps
                  </a></small
                >
              </div>

              <style>
                #gmap_canvas img {
                  max-width: none !important;
                  background: none !important;
                }
              </style>
            </div>
            <script type="text/javascript">
              function init_map() {
                console.log(google.maps);
                var myOptions = {
                  zoom: 14,
                  center: new google.maps.LatLng(39.4697495, -0.37739),
                  mapTypeId: google.maps.MapTypeId.ROADMAP
                };
                map = new google.maps.Map(
                  document.getElementById("gmap_canvas"),
                  myOptions
                );
                marker = new google.maps.Marker({
                  map: map,
                  position: new google.maps.LatLng(39.9856682, -0.04935)
                });
                infowindow = new google.maps.InfoWindow({
                  content:
                    "<strong>UbicaciÃ³n de la Startup</strong><br>Castellon de la Plata<br>"
                });
                google.maps.event.addListener(marker, "click", function() {
                  infowindow.open(map, marker);
                });
                infowindow.open(map, marker);
              }
              google.maps.event.addDomListener(window, "load", init_map);
            </script>
          </div>
          <div class="col2 column2 last">
            <div class="sec2innercont">
              <div class="sec2addr">
                <p>
                  Av. dels Germans Bou, 79, 12003 CastellÃ³ de la Plana
                </p>
                <p><span class="collig">Telefono :</span> +34 964 35 65 00</p>
                <p>
                  <span class="collig">Email :</span> meloinventao@gmail.com
                </p>
              </div>
            </div>
            <div class="sec2contactform">
              <h3 class="sec2frmtitle">
                Â¿Quieres conocernos mejor? Deja un mensaje
              </h3>
              <form action="">
                <div class="clearfix">
                  <input class="col2 first" type="text" placeholder="Nombre" />
                  <input class="col2 last" type="text" placeholder="Apellido" />
                </div>
                <div class="clearfix">
                  <input class="col2 first" type="Email" placeholder="Email" />
                  <input
                    class="col2 last"
                    type="text"
                    placeholder="Numero de Contacto"
                  />
                </div>
                <div class="clearfix">
                  <textarea name="textarea" id="" cols="30" rows="7">
Mensaje...</textarea
                  >
                </div>
                <div class="clearfix">
                  <input type="submit" value="Enviar" />
                </div>
              </form>
            </div>
          </div>
        </section>
      </div>
    </div>
  </body>
</html>
