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
	<div class="container-fluid">
		<h1>Gestion de Vuelos en Aeropuerto Ficticio</h1>
		<%
			Modelo m = new Modelo();

			Map<String, List<List<Pasajero>>> pav;

			pav = m.getPasajerosAgrupadosPorVuelo(m.getVuelos());

			for (Map.Entry<String, List<List<Pasajero>>> entry : pav.entrySet()) {
				String key = entry.getKey(); // Destino del vuelo
				List<List<Pasajero>> values = entry.getValue();
		%>
		<h3><strong>Vuelo con Destino a: <%=key%></strong></h3>
		<h3><em>Pasajeros del Vuelo</em></h3>
		<table class="table table-dark table-striped table-hover">
			<thead>
				<tr>
					<th>Nombre</th>
					<th>Primer Apellido</th>
					<th>Segundo Apellido</th>
					<th>Telefono</th>
					<th>Correo</th>
				</tr>  
			</thead>
			<tbody>
			<%
				for(List<Pasajero> pasajeros: values) {
					for(Pasajero p: pasajeros) {
						%>
						<tr><td><%=p.getNombre() %></td><td><%=p.getPrimerApellido() %></td><td><%=p.getSegundoApellido() %></td><td><%=p.getTelefono() %></td><td><%=p.getCorreo() %></td></tr>
						<%
					}
				}
			%>
			</tbody>
		</table>
		<br>
		<br>
		<%
			}
		%>
	</div>
	<button type="button" class="btn btn-primary" onclick="redirect()">Reserva</button>
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
		<script>
		 	function redirect(){
		 		window.location.href="login.jsp";
		 	}
		</script>
</body>
</html>