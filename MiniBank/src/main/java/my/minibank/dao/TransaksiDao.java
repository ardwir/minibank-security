package my.minibank.dao;

import java.util.List;

import my.minibank.model.Transaksi;

public interface TransaksiDao {
	
	public List<Transaksi> listTransaksi(int id_nasabah);

}
