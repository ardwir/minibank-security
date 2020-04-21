package my.minibank.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import my.minibank.model.Telepon;

@Repository
public class TeleponDaoImpl implements TeleponDao{
	
	private SessionFactory sessionFactory;
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionf) {
		this.sessionFactory = sessionf;
	}
	
	@Override
	public void addTelepon(Telepon tel) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(tel);
	}

}
