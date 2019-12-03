function login(){
	var nombre = document.getElementById("userInput").value
	var contraseña = document.getElementById("passwordInput").value
	var http = new XMLHttpRequest();
	http.onreadystatechange = function () {
		if(this.readyState == 4 && this.status == 200) {
			var rtaRecibida = this.responseText;

			if(rtaRecibida == "Existe") {
				window.location.href="../reserva.jsp";
			}
			else {
				window.location.href="../vuelosTabla.jsp";			
			}
		}
	};

	// Preparar la peticion por AJAX
	http.open("GET", "../AJAXCheckNombreController?comprobarNombre="+nombre+"&comprobarPassword="+contraseña, true);
	http.send();
}
function addEvent(id) {
  var listHtml = document.getElementById(id).getElementsByTagName("input");
  for (var x = 0; x < listHtml.length; x++) {
    listHtml[x].addEventListener("focus", eventDirty);
    listHtml[x].addEventListener("focusout", eventDirty);
  }
}
function eventDirty(x) {
  var label = x.target.parentNode.getElementsByTagName("label");
  if (x.target.value.length < 1) {
    label[0].classList.toggle("active");
  }
  label[0].classList.toggle("highlight");
}
function eventDirtyRemoveHighlight(x) {
  var label = x.target.parentNode.getElementsByTagName("label");
  label[0].classList.toggle("highlight");
}
