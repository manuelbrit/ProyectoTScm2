package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class DataBaseConnection {
	private String user;
	private String password;
	private Connection conn;
	
	public DataBaseConnection(String user, String password) {
		super();
		this.user = user;
		this.password = password;
	}
	
	public Connection getConnection() throws ClassNotFoundException {
		conn = null;
		Properties infoConnection;
		String urlConnection;
		
		urlConnection = "jdbc:mysql://localhost:3306/gestionDeVuelos?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
		infoConnection = new Properties();
		infoConnection.put("user", this.user);
		infoConnection.put("password", this.password);
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(urlConnection, infoConnection);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return conn;
	}

	// Recupera vuelos
	public ResultSet dameVuelos() throws SQLException {
		ResultSet rs = null;
		String query = "select * from vuelos";
		
		Statement stmt;
		try {
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	
	// Recupera los pasajeros de un vuelo concreto 
	// que recibe como parametro
	public ResultSet damePasajerosDelVuelo(int idVuelo) throws SQLException {
		ResultSet rs = null;
		String query = "select p.*, t.numero telefono, c.correo\n" + 
				"from pasajeros p left join telefonos t on p.id = t.idPasajero\n" + 
				"                 left join correos c on c.idPasajero = p.id\n" + 
				"where p.idVuelo = ?";
		
		PreparedStatement stmt;
		
		try {
			conn = getConnection();
			stmt = conn.prepareStatement(query);
			stmt.setInt(1, idVuelo);
			rs = stmt.executeQuery();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}
	public ResultSet dameUsuarios() throws SQLException {
		ResultSet rs = null;
		String query = "select * from usuarios";
		Statement stmt;
		
		try {
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}
	
}







