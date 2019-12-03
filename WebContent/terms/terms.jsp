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
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
      crossorigin="anonymous"
    />
    <script
      src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
      integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
      integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
      integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
      crossorigin="anonymous"
    ></script>
    <link rel="stylesheet" href="terms.css" />
    <script src="terms.js"></script>

    <title>Brito | Rent Car</title>
  </head>

  <body>
    <div class="container card-deck" style="max-width: 100%;color:#10f393 !important">
      <section class="card" id="drchase">
        <header class="card-header">
          <nav class="nav nav-tabs card-header-tabs" id="myTab" role="tablist" >
            <a class="nav-link nav-item active"  id="condiciones-tab" data-toggle="tab" href="#condiciones" role="tab" aria-controls="condiciones" aria-selected="true">Condiciones</a>
            <a class="nav-link nav-item" id="politicas-tab" data-toggle="tab" href="#politicas" role="tab" aria-controls="politicas" aria-selected="false">Politica de Privacidad</a>
            <a class="nav-link nav-item" id="terminos-tab" data-toggle="tab" href="#terminos" role="tab" aria-controls="terminos" aria-selected="false">Aviso Legal</a>
          </nav>
        </header>
        <div class="tab-content" style="padding:20px" id="myTabContent">
          <div class="tab-pane fade show active" id="condiciones" role="tabpanel" aria-labelledby="condiciones-tab">
            <p>Aquí puede descargar las condiciones de alquiler en general:</p>
            <p>
              <strong class="card-title">CONDICIONES GENERALES DE ARRENDAMIENTO DE VEHÍCULOS</strong>
              <a href="https://www.sixt.es/fileadmin/sys/agb/ES_Relacion_Cargos_Adicionales.pdf" target="_blank">(pdf)</a>
            </p>
          </div>
          <div class="tab-pane fade" id="politicas" role="tabpanel" aria-labelledby="politicas-tab">
            <p><a href="https://www.sixt.es/fileadmin/sys/agb/DSGVO_ES_es.pdf" target="_blank" class="download">Política de Privacidad</a>
          </p>
          </div>
          <div class="tab-pane fade" id="terminos" role="tabpanel" aria-labelledby="terminos-tab">
            <p>
            <strong>Copyright</strong>
            </p>
            <p><strong></strong> Todos los derechos sobre el contenido de este página web pertenecen a la e-Sixt GmbH &amp; Co. KG, salvo aquellos que pertenezcan a sus socios o empresas colaboradoras con las que exista firmado el correspondiente contrato. El diseño, imágenes, mapas, gráficos, frames, banners, el software y sus distintos códigos, fuente y objeto, y demás elementos integrantes de esta página web son de titularidad de la e-Sixt GmbH &amp; Co. KG, que posee legítimamente en exclusiva los derechos de explotación sobre los mismos. En consecuencia, el usuario que acceda a esta página no puede bajo ningún concepto copiarlos, modificarlos, distribuirlos, transmitirlos, reproducirlos, publicarlos, licenciarlos, cederlos, venderlos o transmitirlos de cualquier forma, o crear nuevos productos o servicios derivados de la información y elementos aquí contenidos, salvo que tenga un permiso escrito de la e-Sixt GmbH &amp; Co. KG.
            </p>
            <p>&nbsp;</p>
            <p><strong>Aviso de responsabilidad legal</strong>
            </p>
            <p> Pese a realizar cuidadosos controles de su contenido, no asumimos ninguna responsabilidad por los contenidos de los enlaces externos. La responsabilidad por el contenido de las páginas enlazadas recae exclusivamente sobre los operadores de las mismas.
            </p>
            <p>&nbsp;</p>
          </div>
        </div>


    </div>
  </body>
</html>
