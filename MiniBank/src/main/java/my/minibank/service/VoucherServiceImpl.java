package my.minibank.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import my.minibank.dao.VoucherDao;
import my.minibank.model.Voucher;

@Service
@EnableTransactionManagement
public class VoucherServiceImpl implements VoucherService{
	
	VoucherDao voucherDao;
	
	@Autowired
	public void setVoucherDao(VoucherDao voucherDao) {
		this.voucherDao = voucherDao;
	}
	
	@Override
	@Transactional
	public void addVoucher(Voucher voucher) {
		this.voucherDao.addVoucher(voucher);
	}

}
