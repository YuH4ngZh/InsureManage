package dao.impl;

import org.hibernate.Session;
import org.hibernate.Transaction;

import dao.AddDao;
import model.Contract;
import model.Info;
import model.Operation;

public class AddDaoImp implements AddDao{

	@Override
	public void AddContract(Contract contract) {
		Session session = util.HibernateSessionFactory.getSession();
		Transaction ts = null;
		try{
			ts = session.beginTransaction();
			session.save(contract);
			ts.commit();
		}catch(Exception e){
			System.out.println("AddContract方法异常");
			e.printStackTrace();
		}finally{
			util.HibernateSessionFactory.closeSession();
		}
	}

	@Override
	public void AddOrUpdateInfo(Info info) {
		Session session = util.HibernateSessionFactory.getSession();
		Transaction ts = null;
		try{
			ts = session.beginTransaction();
			session.saveOrUpdate(info);
			ts.commit();
		}catch(Exception e){
			System.out.println("AddContract方法异常");
			e.printStackTrace();
		}finally{
			util.HibernateSessionFactory.closeSession();
		}
	}

	@Override
	public void AddOperation(Operation operation) {
		Session session = util.HibernateSessionFactory.getSession();
		Transaction ts = null;
		try{
			ts = session.beginTransaction();
			session.save(operation);
			ts.commit();
		}catch(Exception e){
			System.out.println("AddContract方法异常");
			e.printStackTrace();
		}finally{
			util.HibernateSessionFactory.closeSession();
		}
	}

	@Override
	public void AddBuyer(Info info) {
		Session session = util.HibernateSessionFactory.getSession();
		Transaction ts = null;
		try{
			ts = session.beginTransaction();
			session.update(info);
			ts.commit();
		}catch(Exception e){
			System.out.println("AddContract方法异常");
			e.printStackTrace();
		}finally{
			util.HibernateSessionFactory.closeSession();
		}
	}
}
