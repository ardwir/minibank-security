package my.minibank.service;

import java.util.List;

import my.minibank.model.Transaksi;

public interface TransaksiService {
	
	public List<Transaksi> listTransaksi(int id_nasabah);

}