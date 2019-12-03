<%@page import="modelo.Pasajero"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="modelo.Modelo"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.0/css/bootstrap.min.css"
	integrity="sha384-SI27wrMjH3ZZ89r4o+fGIJtnzkAnFs3E4qz9DIYioCQ5l9Rd/7UAa8DHcaL8jkWt"
	crossorigin="anonymous">

<title>Hello, world!</title>
</head>
<body>	
<div class="leftMenu" onclick="openMenu()">
  <div class="threeLines active">
    <span></span>
    <span></span>
    <span></span>
  </div>
  <ul class="leftMenuList">
    <li onclick="navigateTo('./principal/principal.jsp');openMenu()">
      <a href="#">
        <i class="fa fa-home" aria-hidden="true"></i>
        <span>PRINCIPAL</span>
      </a>
    </li>
    <li onclick="navigateTo('./infoUs/infoUs.jsp');openMenu()">
      <a href="#">
        <i class="fa fa-info-circle" aria-hidden="true"></i>
        <span>SOBRE NOSOTROS</span>
      </a>
    </li>
    <li onclick="navigateTo('./rent/rent.jsp');openMenu()">
      <a href="#">
        <i class="fa fa-handshake"></i>
        <span>ALQUILER</span>
      </a>
    </li>
    <li>
      <a href="#/loft">
        <i class="fa fa-car" aria-hidden="true"></i>
        <span>COCHES Y PRECIOS</span>
      </a>
    </li>
    <li onclick="navigateTo('./terms/terms.`jsp');openMenu()">
      <a href="#">
        <i class="fa  fa-gavel" aria-hidden="true"></i>
        <span>POLITICAS</span>
      </a>
    </li>
    <li onclick="navigateTo('./contact/contact.jsp');openMenu()">
      <a href="#">
        <i class="fa  fa-headset" aria-hidden="true"></i>
        <span>CONTACTO</span>
      </a>
    </li>
    <li onclick="navigateTo('./login/login.jsp');openMenu()">
      <a href="#">
        <i class="fa  fa-user-circle" aria-hidden="true"></i>
        <span>INICIAR SESION</span>
      </a>
    </li>
  </ul>
</div>
</body>
</html>