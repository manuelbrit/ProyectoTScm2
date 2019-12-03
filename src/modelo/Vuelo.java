package modelo;

import java.time.LocalDateTime;
import java.util.List;

public class Vuelo {
	private int id;
	private String destino;
	private LocalDateTime fechaHoraSalida;
	private LocalDateTime fechaHoraLlegada;
	private int totalPasajeros;
	private List<Pasajero> pasajeros;
	
	public Vuelo(int id, String destino, LocalDateTime fechaHoraSalida, LocalDateTime fechaHoraLlegada,
			int totalPasajeros, List<Pasajero> pasajeros) {
		super();
		this.id = id;
		this.destino = destino;
		this.fechaHoraSalida = fechaHoraSalida;
		this.fechaHoraLlegada = fechaHoraLlegada;
		this.totalPasajeros = totalPasajeros;
		this.pasajeros = pasajeros;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDestino() {
		return destino;
	}

	public void setDestino(String destino) {
		this.destino = destino;
	}

	public LocalDateTime getFechaHoraSalida() {
		return fechaHoraSalida;
	}

	public void setFechaHoraSalida(LocalDateTime fechaHoraSalida) {
		this.fechaHoraSalida = fechaHoraSalida;
	}

	public LocalDateTime getFechaHoraLlegada() {
		return fechaHoraLlegada;
	}

	public void setFechaHoraLlegada(LocalDateTime fechaHoraLlegada) {
		this.fechaHoraLlegada = fechaHoraLlegada;
	}

	public int getTotalPasajeros() {
		return totalPasajeros;
	}

	public void setTotalPasajeros(int totalPasajeros) {
		this.totalPasajeros = totalPasajeros;
	}

	public List<Pasajero> getPasajeros() {
		return pasajeros;
	}

	public void setPasajeros(List<Pasajero> pasajeros) {
		this.pasajeros = pasajeros;
	}

	@Override
	public String toString() {
		return "Vuelo [id=" + id + ", destino=" + destino + ", fechaHoraSalida=" + fechaHoraSalida
				+ ", fechaHoraLlegada=" + fechaHoraLlegada + ", totalPasajeros=" + totalPasajeros + ", pasajeros="
				+ pasajeros + "]";
	}
	
	
}
