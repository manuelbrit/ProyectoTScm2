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
    <link rel="stylesheet" href="login.css" />
    <script src="login.js"></script>

    <title>Brito | Rent Car</title>
  </head>
  <body>
    <br /><br /><br /><br />
    <div class="container">
      <form>
        <div class="row">
          <div class="col-sm-6" id="card-details">
            <h4>Detalles de tarjeta</h4>
            <hr />
            <div class="form-group">
              <label for="card-number">Numero de Tarjeta</label>
              <input
                type="text"
                class="form-control"
                name="card-number"
                placeholder="4242 4242 4242 4242"
              />
            </div>

            <div class="form-group">
              <label for="first-name">Nombres</label>
              <input
                type="text"
                class="form-control"
                name="first-name"
                placeholder="Joe"
              />
            </div>

            <div class="form-group">
              <label for="last-name">Apellidos</label>
              <input
                type="text"
                class="form-control"
                name="last-name"
                placeholder="Bloggs"
              />
            </div>

            <div class="form-group">
              <label for="expiry">Fecha de Expiración</label>
              <input
                type="text"
                class="form-control"
                name="expiry"
                placeholder="MM/YY"
              />
            </div>

            <div class="form-group">
              <label for="cvc">CVC</label>
              <input
                type="text"
                class="form-control"
                name="cvc"
                placeholder="123"
              />
            </div>
          </div>

          <div class="col-sm-6">
            <div
              id="card-wrapper"
              style="padding-top: 11px; padding-bottom: 11px;"
            ></div>

            <h4>Información de Pago</h4>
            <hr />

            <div class="form-group">
              <label for="description"
                >Descripción de Orden
                <small>(Numero de Referencia / Orden ID)</small></label
              >
              <input
                type="text"
                class="form-control"
                name="description"
                placeholder="Order #500123"
              />
            </div>

            <div class="row">
              <div class="col-sm-7">
                <div class="form-group">
                  <label for="amount">Monto</label>
                  <input
                    type="text"
                    class="form-control"
                    name="amount"
                    placeholder="100.00"
                  />
                </div>
              </div>

              <div class="col-sm-5">
                <div class="form-group disabled">
                  <label for="currency">Moneda</label>
                  <input
                    type="text"
                    class="form-control"
                    name="currency"
                    placeholder="GBP"
                    value="GBP"
                    disabled="disabled"
                  />
                </div>
              </div>
            </div>
          </div>
        </div>

        <button type="submit" class="btn btn-success pull-right">Enviar</button>
        <div class="clearfix"></div>
      </form>
    </div>
    <br /><br /><br /><br />
  </body>
</html>
