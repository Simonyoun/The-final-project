package Lunbo;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import Hibernate.HibernateUtils;

public class fenye {
	public List<Object> check(int a,int b){
		Session session=HibernateUtils.getSession();
		Transaction tx=null;
		try{
		tx=session.beginTransaction();
		String hql ="from BoTu";
		Query query=session.createQuery(hql);
		query.setFirstResult(a);
		query.setMaxResults(b);
		List list=query.list();
		tx.commit();
		return list;
		} 
		catch (RuntimeException e) {
			session.getTransaction().rollback();//事物的回滚
			throw e;
				}
		finally{
		session.close();
		}
	}
	public void delete(int a){
		Session session=HibernateUtils.getSession();
		Transaction tx=null;
		try{
		tx=session.beginTransaction();
		BoTu c =(BoTu)session.get(BoTu.class, a);
		session.delete(c);
		tx.commit();
				} 
		catch (RuntimeException e) {
			session.getTransaction().rollback();//事物的回滚
			throw e;
				}
		finally{
		session.close();
		}
	}
}
