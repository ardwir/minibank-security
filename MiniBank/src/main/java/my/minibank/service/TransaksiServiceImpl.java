package my.minibank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import my.minibank.dao.TransaksiDao;
import my.minibank.model.Transaksi;

@Service
@EnableTransactionManagement
public class TransaksiServiceImpl implements TransaksiService{
	
	private TransaksiDao transaksiDao;
	
	@Autowired
	public void setTransaksi(TransaksiDao transaksiDao) {
		this.transaksiDao = transaksiDao;
	}
	
	@Override
	@Transactional
	public List<Transaksi> listTransaksi(int id_nasabah){
		return this.transaksiDao.listTransaksi(id_nasabah);
	}

}
