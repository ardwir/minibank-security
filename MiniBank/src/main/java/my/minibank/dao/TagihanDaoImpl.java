package my.minibank.dao;

import java.time.LocalDate;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import my.minibank.model.Tagihan;
import my.minibank.model.Transaksi;

@Repository
public class TagihanDaoImpl implements TagihanDao {
	
	private SessionFactory sessionFactory;
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionf) {
		this.sessionFactory = sessionf;
	}

	@Override
	public void updateTagihan(Tagihan tagihan) {
		Session session= this.sessionFactory.getCurrentSession();
		session.update(tagihan);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Transaksi> listTransaksi(int id_nasabah) {
		Session session= this.sessionFactory.getCurrentSession();
		LocalDate today = LocalDate.now();
		int month = today.getMonthValue()-1;
		int year = today.getYear();
		List<Transaksi> transaksiList = session.createQuery(
				"from Transaksi where EXTRACT(MONTH FROM tanggal_transaksi)="+month+" AND EXTRACT(YEAR FROM tanggal_transaksi)="+year+" AND id_nasabah="+id_nasabah).list();
		return transaksiList;
	}
	
	@Override
	public Tagihan getTagihan(int id_nasabah) {
		Session session= this.sessionFactory.getCurrentSession();
		return (Tagihan)session.get(Tagihan.class, id_nasabah);
	}

}
