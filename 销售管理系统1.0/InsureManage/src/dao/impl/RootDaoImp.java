package dao.impl;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import dao.RootDao;
import model.User;
import model.Worker;
import model.Contract;
import model.Info;
import model.Operation;

public class RootDaoImp implements RootDao {

	public ArrayList<User> UserInfo() {
		try {
			ArrayList<User> userpackage = new ArrayList<User>();
			Session session = util.HibernateSessionFactory.getSession();
			Query query = session.createQuery("from User");
			List list = query.list();
			Iterator it = list.iterator();
			while (it.hasNext()) {
				User log = (User) it.next();
				User user = new User();
				user.setId(log.getId());
				user.setUsername(log.getUsername());
				user.setPassword(log.getPassword());
				user.setName(log.getName());
				user.setMobile(log.getMobile());
				user.setJob(log.getJob());
				user.setBirth(log.getBirth());
				userpackage.add(user);
			}
			return userpackage;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			util.HibernateSessionFactory.closeSession();
		}
	}

	
	public ArrayList<Worker> WorkerInfo() {
		try {
			ArrayList<Worker> workerpackage = new ArrayList<Worker>();
			Session session = util.HibernateSessionFactory.getSession();
			Query query = session.createQuery("from Worker");
			List list = query.list();
			Iterator it = list.iterator();

			while (it.hasNext()) {
				Worker log = (Worker) it.next();
				Worker worker = new Worker();
				worker.setWorkerid(log.getWorkerid());
				worker.setUsername(log.getUsername());
				worker.setPassword(log.getPassword());
				worker.setName(log.getName());
				workerpackage.add(worker);
			}
			return workerpackage;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			util.HibernateSessionFactory.closeSession();
		}
	}

	
	public ArrayList<Operation> Operation() {
		try {
			ArrayList<Operation> infopackage = new ArrayList<Operation>();
			Session session = util.HibernateSessionFactory.getSession();
			Query query = session.createQuery("from Operation");
			List list = query.list();
			Iterator it = list.iterator();

			while (it.hasNext()) {
				Operation log = (Operation) it.next();
				Operation op = new Operation();
				op.setId(log.getId());
				op.setUser(log.getUser());
				op.setUser_type(log.getUser_type());
				op.setOperate_type(log.getOperate_type());

				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				Date date = log.getDate();
				String str = format.format(date);
				op.setDate(format.parse(str));
				System.out.println(op.getDate());
				infopackage.add(op);
			}
			return infopackage;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			util.HibernateSessionFactory.closeSession();
		}
	}

	public ArrayList<Info> InsureInfo() {
		try {
			ArrayList<Info> infopackage = new ArrayList<Info>();
			Session session = util.HibernateSessionFactory.getSession();
			Query query = session.createQuery("from Info");
			List list = query.list();
			Iterator it = list.iterator();

			while (it.hasNext()) {
				Info log = (Info) it.next();
				Info info = new Info();
				info.setInfoid(log.getInfoid());
				info.setName(log.getName());
				info.setType(log.getType());
				info.setPrice(log.getPrice());
				info.setCompensate(log.getCompensate());
				info.setMinage(log.getMinage());
				info.setMaxage(log.getMaxage());
				info.setTime(log.getTime());
				info.setIntro(log.getIntro());
				info.setBuyer(log.getBuyer());
				infopackage.add(info);
			}
			return infopackage;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			util.HibernateSessionFactory.closeSession();
		}
	}


	public ArrayList<Contract> ContractInfo() {
		try {
			ArrayList<Contract> contractpackage = new ArrayList<>();
			Session session = util.HibernateSessionFactory.getSession();
			Query query = session.createQuery("from Contract");
			List list = query.list();
			Iterator it = list.iterator();
			
			while (it.hasNext()) {
				Contract log = (Contract) it.next();
				Contract con = new Contract();
				con.setId(log.getId());
				con.setUserid(log.getUserid());
				con.setInsurename(log.getInsurename());
				con.setApplicant(log.getApplicant());
				con.setInsured(log.getInsured());
				con.setInsuredid(log.getInsuredid());
				con.setMobile(log.getMobile());
				con.setLocation(log.getLocation());
				con.setBegindate(log.getBegindate());
				con.setEnddate(log.getEnddate());
				contractpackage.add(con);
			}
			return contractpackage;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			util.HibernateSessionFactory.closeSession();
		}
	}


	@Override
	public void DeleteInfo(int  infoid) {
		try {
			//数据库删除		
			Session session = util.HibernateSessionFactory.getSession();
			Transaction ts = session.beginTransaction();
			Query query = session.createQuery("delete  from Info  where infoid=?");
			query.setParameter(0, infoid);
			query.executeUpdate();	
			ts.commit();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}finally{
			util.HibernateSessionFactory.closeSession();
		}
	}


	@Override
	public void DeleteWorker(int workerid) {
		try {
			//数据库删除		
			Session session = util.HibernateSessionFactory.getSession();
			Transaction ts = session.beginTransaction();
			Query query = session.createQuery("delete from Worker where workerid=?");
			query.setParameter(0, workerid);
			query.executeUpdate();	
			ts.commit();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}finally{
			util.HibernateSessionFactory.closeSession();
		}
	}
}
