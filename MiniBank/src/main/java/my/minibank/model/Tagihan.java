package my.minibank.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tagihan")
public class Tagihan {
	
	@Id
	@Column(name="id_tagihan")
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private int id;
	
	private int id_nasabah;
	
	private int total_tagihan;
	
	private Date jatuh_tempo_tagihan;

	public void setId(int id) {
		this.id = id;
	}
	public void setId_nasabah(int id_nasabah) {
		this.id_nasabah = id_nasabah;
	}
	public void setTotal_tagihan(int total_tagihan) {
		this.total_tagihan = total_tagihan;
	}
	public void setJatuh_tempo_tagihan(Date jatuh_tempo_tagihan) {
		this.jatuh_tempo_tagihan = jatuh_tempo_tagihan;
	}
	public int getId() {
		return id;
	}
	public int getId_nasabah() {
		return id_nasabah;
	}
	public int getTotal_tagihan() {
		return total_tagihan;
	}
	public Date getJatuh_tempo_tagihan() {
		return jatuh_tempo_tagihan;
	}

}
