package dao.impl;

import model.User;

import org.hibernate.Session;
import org.hibernate.Transaction;

import dao.RegistDao;

public class RegistDaoImp implements RegistDao{

	public void Regist(User login) {
		Session session = util.HibernateSessionFactory.getSession();
		Transaction ts = null;
		try{
			ts = session.beginTransaction();
			session.save(login);
			ts.commit();
		}catch(Exception e){
			System.out.println("regist∑Ω∑®“Ï≥£");
			e.printStackTrace();
		}finally{
			util.HibernateSessionFactory.closeSession();
		}
	}
}
