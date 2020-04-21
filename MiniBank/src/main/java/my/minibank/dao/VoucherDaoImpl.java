package my.minibank.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import my.minibank.model.Voucher;

@Repository
public class VoucherDaoImpl implements VoucherDao {
	
	private SessionFactory sessionFactory;
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Override
	public void addVoucher(Voucher voucher) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(voucher);
	}
	
}
