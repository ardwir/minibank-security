package my.minibank.dao;

import java.time.LocalDate;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import my.minibank.model.Transaksi;

@Repository
public class TransaksiDaoImpl implements TransaksiDao{
	
	private SessionFactory sessionFactory;

	@Autowired
	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Transaksi> listTransaksi(int id_nasabah) {
		Session session = this.sessionFactory.getCurrentSession();
		LocalDate today = LocalDate.now();
		int month = today.getMonthValue();
		int year = today.getYear();
		List<Transaksi> transaksiList = session.createQuery("from Transaksi where EXTRACT(MONTH FROM tanggal_transaksi)="+month+" AND EXTRACT(YEAR FROM tanggal_transaksi)="+year+" AND id_nasabah="+id_nasabah).list();
		return transaksiList;
	}

}
