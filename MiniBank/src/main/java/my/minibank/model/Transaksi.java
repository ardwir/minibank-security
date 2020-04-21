package my.minibank.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="transaksi")
public class Transaksi {
	
	@Id
	@Column(name="id_transaksi")
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private int id;
	
	private int id_nasabah;
	
	private String nama_toko;
	
	private int nominal_transaksi;
	
	private Date tanggal_transaksi;
	
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
	public String getNama_toko() {
		return nama_toko;
	}
	public void setNama_toko(String nama_toko) {
		this.nama_toko = nama_toko;
	}
	public int getNominal_transaksi() {
		return nominal_transaksi;
	}
	public void setNominal_transaksi(int nominal_transaksi) {
		this.nominal_transaksi = nominal_transaksi;
	}
	public Date getTanggal_transaksi() {
		return tanggal_transaksi;
	}
	public void setTanggal_transaksi(Date tanggal_transaksi) {
		this.tanggal_transaksi = tanggal_transaksi;
	}

}
