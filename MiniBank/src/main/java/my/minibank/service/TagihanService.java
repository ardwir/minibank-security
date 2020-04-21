package my.minibank.service;

import java.util.List;

import my.minibank.model.Tagihan;
import my.minibank.model.Transaksi;

public interface TagihanService {
	
	public void updateTagihan(Tagihan t);
	
	public List<Transaksi> listTransaksi(int id_nasabah);
	
	public Tagihan getTagihan(int id_nasabah);

}
