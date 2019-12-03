function openMenu() {
  var element = document.querySelector(".leftMenu");
  element.classList.toggle("openMenu");

  var threeLines = document.querySelector(".threeLines");
  threeLines.classList.toggle("open");

  var container = parent.document.querySelector("#containerIframe");
  container.classList.toggle("openContainer");
}
function navigateTo(page) {
  if (sessionStorage.getItem("loginOn")) {
    document.getElementById("container").src = page;
  } else if (sessionStorage.getItem("loginOn") && page == "./login/login.jsp") {
	  document.getElementById("container").src = "./principal/principal.jsp";
  } else {
    document.getElementById("container").src = "./login/login.jsp";
  }

  openMenu();
}
