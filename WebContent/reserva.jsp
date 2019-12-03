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
<form style="margin: 0% 30% 25% 30%" row>
  <div class="form-group col-sm-12">
    <label for="nombre">Nombre:</label>
    <input class="form-control" id="nombre" type="text" name="nombre"/>
  </div>
  <div class="form-group col-sm-12" >
    <label for="nombre">Apellido:</label>
    <input class="form-control" id="nombre" type="text" name="nombre"/>
  </div>
  <div class="form-group col-sm-12">
	  <div class="col-sm-6">
	  	<label for="nombre">Fecha de Salida:</label>
	    <input/>
   	 </div>
   	 <div class="col-sm-6">
   	 	<label for="fechaEntrada">Fecha de Entrada:</label>
   	 	<input/>
   	 </div>
 </div>

  <div class="form-group">
    <div class="checkbox">
      <label>
        <input type="checkbox"> Recordarme
      </label>
    </div>
  </div>
 
  <button type="submit" class="btn btn-default">Enviar</button>
</form>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.0/js/bootstrap.min.js"
		integrity="sha384-3qaqj0lc6sV/qpzrc1N5DC6i1VRn/HyX4qdPaiEFbn54VjQBEU341pvjz7Dv3n6P"
		crossorigin="anonymous"></script>
        <script type="text/javascript">
            $(function () {
                $('#datetimepicker1').datetimepicker();
            });
        </script>
</body>
</html>