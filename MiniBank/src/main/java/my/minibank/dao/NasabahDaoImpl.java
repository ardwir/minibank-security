package my.minibank.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import my.minibank.model.NasabahModel;

@Repository
public class NasabahDaoImpl implements NasabahDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public NasabahModel getNasabah(int id) {
		Session currentSession = sessionFactory.getCurrentSession();
		NasabahModel nasabah = currentSession.get(NasabahModel.class, id);
		return nasabah;
	}
	
	@Override
	@SuppressWarnings("unchecked")
	public NasabahModel getNasabahByUsername(String username) {
		Session session = this.sessionFactory.getCurrentSession();
		String q = "from NasabahModel where username='";
		List<NasabahModel> nasabahList = session.createQuery(q + username + "'").list();
		return nasabahList.get(0);

	}

	@Override
	public void updatePassword(int id, String newPassword) {
		Session session = sessionFactory.getCurrentSession();
		NasabahModel nasabah = session.byId(NasabahModel.class).load(id);
		nasabah.setPassword(newPassword);
		session.saveOrUpdate("password", nasabah);
	}


}
