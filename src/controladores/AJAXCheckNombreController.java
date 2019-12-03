package controladores;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Modelo;
import modelo.Usuario;

/**
 * Servlet implementation class AJAXCheckNombreController
 */
@WebServlet("/AJAXCheckNombreController")
public class AJAXCheckNombreController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AJAXCheckNombreController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		final String nombre = request.getParameter("comprobarNombre");
		final String contraseya = request.getParameter("comprobarPassword");
		
		
		// Pedir al modelo que nos consulte si existe este nombre 
		// en la tabla empleados
		Modelo m = new Modelo();
		List<Usuario> usuarios = m.getUsuarios();
		
		List<Usuario> usuarioFiltrado = null;
		
		usuarioFiltrado = usuarios.stream()
			.filter(e -> e.getUsuario().equals(nombre) && e.getContraseya().equals(contraseya))
			.collect(Collectors.toList());
		
		PrintWriter out = response.getWriter();
		
		if(usuarioFiltrado.size() == 0) {
			out.print("No Existe");
		} else {
			out.print("Existe");
		}
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
