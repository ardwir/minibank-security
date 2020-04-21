package my.minibank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import my.minibank.dao.TagihanDao;
import my.minibank.model.Tagihan;
import my.minibank.model.Transaksi;

@Service
@EnableTransactionManagement
public class TagihanServiceImpl implements TagihanService {
	
TagihanDao tagihanDao;
	
	@Autowired
	public void setTagihanDao(TagihanDao tagihanDao) {
		this.tagihanDao = tagihanDao;
	}

	@Override
	@Transactional
	public void updateTagihan(Tagihan tagihan) {
		this.tagihanDao.updateTagihan(tagihan);
	}

	@Override
	@Transactional
	public List<Transaksi> listTransaksi(int id_nasabah) {
		return this.tagihanDao.listTransaksi(id_nasabah);
	}

	@Override
	@Transactional
	public Tagihan getTagihan(int id_nasabah) {
		return this.tagihanDao.getTagihan(id_nasabah);
	}
	
}
