package clinica.dao.impl;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import clinca.dao.EsameDao;
import clinica.model.Esame;
import clinica.model.Paziente;


@Repository
public class EsameDaoImpl implements EsameDao{

	private static final Logger logger = LoggerFactory
			.getLogger(EsameDaoImpl.class);

	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public void insertEsame(Esame esame) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.save(esame);
		session.getTransaction().commit();
	}
	@Override
	@SuppressWarnings("unchecked")
	public List<Esame> findAll() {
		Session session = sessionFactory.openSession();
		String hql = "FROM Esame";
		Query query = session.createQuery(hql);
		List<Esame> empList = query.list();
		System.out.println("Esame List::" + empList);
		return empList;
	}
	@Override
	public void deleteEsame(long id) {
		Session session = sessionFactory.openSession();		
		Query query = session.createSQLQuery("DELETE from esame_risultati T WHERE T.esame_idesame = :esame_id");
		query.setParameter("esame_id", id);
		int result = query.executeUpdate();	
		String hql2 = "DELETE from Esame T WHERE T.id = :esame_id";
		Query query2 = session.createQuery(hql2);
		query2.setParameter("esame_id", id);

		System.out.println("Row affected: " + result);
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Esame> findEsamiDelPaziente(Paziente p){
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		List<Esame> list=session.createQuery("select e from Esame e where e.paziente.idPaziente="+p.getIdPaziente()).list();
		session.getTransaction().commit();
		return list;
	}
	@Override
	public Esame findEsame(long id){
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Esame e= (Esame) session.get(Esame.class, id);
		session.getTransaction().commit();

		return e;
	}
	public void updateEsame(Esame e){
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.merge(e);
		session.getTransaction().commit();

	}
	public void insertRisultati(Map<String, String> result ){
		Session session = sessionFactory.openSession();
		String hql = "insert into esame_risultati E WHERE E.id = :esame_id";
		Query query = session.createQuery(hql);

	}
	
}
