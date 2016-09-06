package dao.impl;

import model.Controller;
import model.User;
import model.Worker;

import org.hibernate.Query;
import org.hibernate.Session;
import dao.LoginDao;

import java.util.Iterator;
import java.util.List;

public class LoginDaoImp implements LoginDao{

	public String UserisExist(String name, String password) {
		try{
		Session session = util.HibernateSessionFactory.getSession();
		Query query = session.createQuery("from User where username=?");
		query.setParameter(0, name);
		query.setString(0, name);
		List list = query.list();
		if(list == null||list.size()==0){
			return "-1";  //用户名不存在
		}
		Query query2 = session.createQuery("from User where username=? and password=?");
		query2.setParameter(0, name);
		query2.setParameter(1, password);
		List list2 = query2.list();
		if(list2 == null||list2.size()==0){
			return "-2"; //密码不正确
		}
		Iterator it = list2.iterator();
		User log = (User)it.next();
		return log.getUsername();
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}finally{
			util.HibernateSessionFactory.closeSession();
		}
	}
	
	public String WorkerisExist(String name, String password) {
		try{
		Session session = util.HibernateSessionFactory.getSession();
		Query query = session.createQuery("from Worker where username=?");
		query.setParameter(0, name);
		query.setString(0, name);
		List list = query.list();
		if(list == null||list.size()==0){
			return "-1";  //用户名不存在
		}
		Query query2 = session.createQuery("from Worker where username=? and password=?");
		query2.setParameter(0, name);
		query2.setParameter(1, password);
		List list2 = query2.list();
		if(list2 == null||list2.size()==0){
			return "-2"; //密码不正确
		}
		Iterator it = list2.iterator();
		Worker log = (Worker)it.next();
		return log.getUsername();
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}finally{
			util.HibernateSessionFactory.closeSession();
		}
	}
	
	public String ControllerisExist(String name, String password) {
		try{
		Session session = util.HibernateSessionFactory.getSession();
		Query query = session.createQuery("from Controller where username=?");
		query.setParameter(0, name);
		query.setString(0, name);
		List list = query.list();
		if(list == null||list.size()==0){
			return "-1";  //用户名不存在
		}
		Query query2 = session.createQuery("from Controller where username=? and password=?");
		query2.setParameter(0, name);
		query2.setParameter(1, password);
		List list2 = query2.list();
		if(list2 == null||list2.size()==0){
			return "-2"; //密码不正确
		}
		Iterator it = list2.iterator();
		Controller log = (Controller)it.next();
		return log.getUsername();
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}finally{
			util.HibernateSessionFactory.closeSession();
		}
	}
	
	
}