package modelo;

import java.util.List;

public class Pasajero {
	private int id;
	private int idVuelo;
	private String nombre;
	private String primerApellido;
	private String segundoApellido;
	private String telefono;
	private String correo;
	
	public Pasajero(int id, int idVuelo, String nombre, String primerApellido, String segundoApellido,
			String telefono, String correo) {
		super();
		this.id = id;
		this.idVuelo = idVuelo;
		this.nombre = nombre;
		this.primerApellido = primerApellido;
		this.segundoApellido = segundoApellido;
		this.telefono = telefono;
		this.correo = correo;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getIdVuelo() {
		return idVuelo;
	}

	public void setIdVuelo(int idVuelo) {
		this.idVuelo = idVuelo;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getPrimerApellido() {
		return primerApellido;
	}

	public void setPrimerApellido(String primerApellido) {
		this.primerApellido = primerApellido;
	}

	public String getSegundoApellido() {
		return segundoApellido;
	}

	public void setSegundoApellido(String segundoApellido) {
		this.segundoApellido = segundoApellido;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	@Override
	public String toString() {
		return "Pasajero [id=" + id + ", idVuelo=" + idVuelo + ", nombre=" + nombre + ", primerApellido="
				+ primerApellido + ", segundoApellido=" + segundoApellido + ", telefono=" + telefono + ", correo="
				+ correo + "]";
	}



	
}
