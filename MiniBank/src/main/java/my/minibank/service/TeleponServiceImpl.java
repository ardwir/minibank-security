package my.minibank.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import my.minibank.dao.TeleponDao;
import my.minibank.model.Telepon;

@Service
@EnableTransactionManagement
public class TeleponServiceImpl implements TeleponService {
	
	TeleponDao teleponDao;
	
	@Autowired
	public void setTeleponDao(TeleponDao teleponDao) {
		this.teleponDao = teleponDao;
	}
	
	@Override
	@Transactional
	public void addTelepon(Telepon tel) {
		this.teleponDao.addTelepon(tel);
	}

}
