package my.minibank.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="telepon")
public class Telepon {
	
	@Id
	@Column(name="id_pembayaran")
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private int id;
	private int id_nasabah;
	private String provider_telepon;
	private String nomor_telepon;
	private int nominal_telepon;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getId_nasabah() {
		return id_nasabah;
	}
	public void setId_nasabah(int id_nasabah) {
		this.id_nasabah = id_nasabah;
	}
	public String getProvider_telepon() {
		return provider_telepon;
	}
	public void setProvider_telepon(String provider_telepon) {
		this.provider_telepon = provider_telepon;
	}
	public String getNomor_telepon() {
		return nomor_telepon;
	}
	public void setNomor_telepon(String nomor_telepon) {
		this.nomor_telepon = nomor_telepon;
	}
	public int getNominal_telepon() {
		return nominal_telepon;
	}
	public void setNominal_telepon(int nominal_telepon) {
		this.nominal_telepon = nominal_telepon;
	}

}
