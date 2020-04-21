package my.minibank.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "nasabah")
public class NasabahModel {

	@Id
	@Column(name="id_nasabah")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	@Column(name="nama_nasabah")
	private String nama;

	@Column(name="username_nasabah")
	private String username;

	@Column(name="password_nasabah")
	private String password;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNama() {
		return nama;
	}

	public void setNama(String nama) {
		this.nama = nama;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
