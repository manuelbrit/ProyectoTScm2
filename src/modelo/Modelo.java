package modelo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

/**
 * Session Bean implementation class Modelo
 */
@Stateless
@LocalBean
public class Modelo {
	private List<Vuelo> vuelos;
	private Map<String, List<List<Pasajero>>> 
	                    pasajerosAgrupadosPorVuelo;
	private List<Usuario> usuarios;
    /**
     * Default constructor. 
     */
    public Modelo() {
        // TODO Auto-generated constructor stub
    }

	public List<Vuelo> getVuelos() {
		DataBaseConnection db = 
				new DataBaseConnection("root", "admin");
		try {
			ResultSet rs = db.dameVuelos();
			vuelos = new ArrayList<>();
			while(rs.next()) {
				// Hay que recuperar el listado de pasajeros 
				// del vuelo en curso, para ello creamos 
				// un metodo, en la capa de datos, que recibe
				// el id del vuelo y devuelve los pasajeros 
				// de dicho vuelo
				int idVuelo = rs.getInt("id");
				List<Pasajero> pasajerosDelVuelo;
				pasajerosDelVuelo = new ArrayList<>();
				
				ResultSet rsPasajerosDelVuelo = db.damePasajerosDelVuelo(idVuelo);
				while(rsPasajerosDelVuelo.next()) {
					pasajerosDelVuelo.add(
							new Pasajero(rsPasajerosDelVuelo.getInt("id"), 
							rsPasajerosDelVuelo.getInt("idVuelo"), 
							rsPasajerosDelVuelo.getString("nombre"), 
							rsPasajerosDelVuelo.getString("primerApellido"), 
							rsPasajerosDelVuelo.getString("segundoApellido"), 
							rsPasajerosDelVuelo.getString("telefono"), 
							rsPasajerosDelVuelo.getString("correo")));
				}
				
				vuelos.add(new Vuelo(rs.getInt("id"), 
						rs.getString("destino"), 
						rs.getObject("fechaHoraSalida", LocalDateTime.class), 
				        rs.getObject("fechaHoraLlegada", LocalDateTime.class ), 
						rs.getInt("totalPasajeros"), 
						pasajerosDelVuelo));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vuelos;
	}

	public void setVuelos(List<Vuelo> vuelos) {
		this.vuelos = vuelos;
	}

	public Map<String, List<List<Pasajero>>> 
	            getPasajerosAgrupadosPorVuelo(List<Vuelo> vuelos) {
		
		pasajerosAgrupadosPorVuelo = vuelos.stream()
				.collect(Collectors.groupingBy(Vuelo::getDestino,
						Collectors.mapping(Vuelo::getPasajeros, 
								Collectors.toList())));
		
		return pasajerosAgrupadosPorVuelo;
	}

	public void setPasajerosAgrupadosPorVuelo(Map<String, List<List<Pasajero>>> pasajerosAgrupadosPorVuelo) {
		this.pasajerosAgrupadosPorVuelo = pasajerosAgrupadosPorVuelo;
	}

	public List<Usuario> getUsuarios() {
		DataBaseConnection db = new DataBaseConnection("root", "admin");
		
		usuarios = new ArrayList<>();
		
		try {
			ResultSet rs = db.dameUsuarios();
			while(rs.next()) {
				usuarios.add(new Usuario(
						rs.getString("login"), 
						rs.getString("password")));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return usuarios;
	}

	public void setUsuarios(List<Usuario> usuarios) {
		this.usuarios = usuarios;
	}

	
}








