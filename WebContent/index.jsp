<%@page import="modelo.Pasajero"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="modelo.Modelo"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
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
    <!--GLOBAL-->
    <link rel="stylesheet" href="cssGlobal/style.css" />
    <!--MENU-->
    <link rel="stylesheet" href="./menuLateral/menuLateral.css" />
    <script src="./menuLateral/menuLateral.js"></script>

    <title>Brito | Rent Car</title>
  </head>
  <body>
    <div class="parallax"></div>
    <div id="containerAll">
      <div id="menuContainer"></div>
      <div id="containerIframe">
        <iframe id="container"></iframe>
      </div>
    </div>

    <script>
    cargarMenu();
    document.getElementById("container").src = "./principal/principal.jsp";
    function cargarMenu(){
      var menu = document.getElementById("menuContainer");
      var xhttp;
      if (window.XMLHttpRequest) {
        // code for modern browsers
        xhttp = new XMLHttpRequest();
      } else {
        // code for IE6, IE5
        xhttp = new ActiveXObject("Microsoft.XMLHTTP");
      }
      xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
          menu.innerHTML = this.responseText;
        }
      };
      xhttp.open("GET", "./menuLateral/menuLateral.jsp", true);
      xhttp.send();
    }
    </script>
  </body>
</html>