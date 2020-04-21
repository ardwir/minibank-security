package my.minibank.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="voucher")
public class Voucher {

	@Id
	@Column(name="id_voucher")
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private int id;
	
	private int id_nasabah;
	
	private String provider_voucher;
	
	private String nomor_telepon;
	
	private int nominal_voucher;
	
	private String token_voucher;
	
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
	public String getProvider_voucher() {
		return provider_voucher;
	}
	public void setProvider_voucher(String provider_voucher) {
		this.provider_voucher = provider_voucher;
	}
	public String getNomor_telepon() {
		return nomor_telepon;
	}
	public void setNomor_telepon(String nomor_telepon) {
		this.nomor_telepon = nomor_telepon;
	}
	public int getNominal_voucher() {
		return nominal_voucher;
	}
	public void setNominal_voucher(int nominal_voucher) {
		this.nominal_voucher = nominal_voucher;
	}
	public String getToken_voucher() {
		return token_voucher;
	}
	public void setToken_voucher(String token_voucher) {
		this.token_voucher = token_voucher;
	}

}
