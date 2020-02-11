package WanNengGongJu;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import Hibernate.HibernateUtils;
import diyige.neirong;

public class GongJu {

	//查找
	public List<Object> check(String hql){
		Session session=HibernateUtils.getSession();
		Transaction tx=null;
		try{
		tx=session.beginTransaction();
		Query query=session.createQuery(hql);
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
		
	public void save(Object c){
		Session session=HibernateUtils.getSession();
		Transaction tx=null;
		try{
		tx=session.beginTransaction();
		session.save(c);
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
	public void delete(Object c){
		Session session=HibernateUtils.getSession();
		Transaction tx=null;
		try{
		tx=session.beginTransaction();
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
	public void update(Object c){
		Session session=HibernateUtils.getSession();
		Transaction tx=null;
		try{
		tx=session.beginTransaction();
		session.update(c);
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
