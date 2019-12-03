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
    <link rel="stylesheet" href="login.css" />
    <script src="login.js"></script>
<title>Hello, world!</title>
</head>
<body>
      <div class="container card-deck">
        <section class="card">
            <header class="card-header">
                <nav class="nav nav-tabs card-header-tabs" id="myTab" role="tablist" >
                  <a class="nav-link nav-item"  id="registrar-tab" data-toggle="tab" href="#registrar" role="tab" aria-controls="registrar" aria-selected="true">Registrar</a>
                  <a class="nav-link nav-item active" id="iniciar-tab" data-toggle="tab" href="#iniciar" role="tab" aria-controls="iniciar" aria-selected="false">Iniciar Sesion</a>
                </nav>
            </header>

            <div class="tab-content" id="myTabContent">
              <div class="tab-pane fade" id="registrar" role="tabpanel" aria-labelledby="registrar-tab">
                <h1>Registrar</h1>

                <form id="formRegister" action="/" method="post">
                  <div class="top-row">
                    <div class="field-wrap">
                      <label>
                        Nombre<span class="req">*</span>
                      </label>
                      <input type="text" required autocomplete="off" />
                    </div>

                    <div class="field-wrap">
                      <label>
                        Apellido<span class="req">*</span>
                      </label>
                      <input type="text"required autocomplete="off"/>
                    </div>
                  </div>

                  <div class="field-wrap">
                    <label>
                      Correo Electronico<span class="req">*</span>
                    </label>
                    <input type="email"required autocomplete="off"/>
                  </div>

                  <div class="field-wrap">
                    <label>
                      Contraseña<span class="req">*</span>
                    </label>
                    <input type="password"required autocomplete="off"/>
                  </div>

                  <button type="submit" class="button button-block"/>Registrar</button>
                </form>
              </div>

            <div class="tab-pane fade show active" id="iniciar" role="tabpanel" aria-labelledby="iniciar-tab">
              <h1>¡Bienvenido!</h1>

              <form id="formLogin" >

                <div class="field-wrap">
                <label>
                  Usuario<span class="req">*</span>
                </label>
                <input id="userInput" type="text" required autocomplete="off"/>
              </div>

              <div class="field-wrap">
                <label>
                  Contraseña<span class="req">*</span>
                </label>
                <input id="passwordInput" type="password"required autocomplete="off"/>
              </div>

              <p class="forgot"><a href="#">¿Olvidaste la contraseña?</a></p>
          
              </form>
			<button onclick="login()" class="button button-block"/>Iniciar Sesión</button>

            </div>

          </div><!-- tab-content -->
        </div>
        </section>
      </div> <!-- /form -->
      <script>
      addEvent("formRegister")
      addEvent("formLogin")
      </script>
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
</body>
</html>