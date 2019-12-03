package modelo;

public class Usuario {
	private String usuario;
	private String contraseya;
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public Usuario(String usuario, String contraseya) {
		super();
		this.usuario = usuario;
		this.contraseya = contraseya;
	}
	public String getContraseya() {
		return contraseya;
	}
	public void setContraseya(String contraseya) {
		this.contraseya = contraseya;
	}
	
	
}
