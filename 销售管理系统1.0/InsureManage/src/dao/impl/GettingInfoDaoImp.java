package dao.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;

import com.opensymphony.xwork2.ActionContext;

import dao.GettingInfoDao;
import model.Contract;
import model.Info;
import model.User;

public class GettingInfoDaoImp implements GettingInfoDao {

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
				info.setTime(log.getTime());
				info.setMinage(log.getMinage());
				info.setMaxage(log.getMaxage());
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

	@SuppressWarnings("unchecked")
	@Override
	public Info DetailInfo(int id) {
		// TODO Auto-generated method stub
		ActionContext actionContext = ActionContext.getContext();
		Map session = actionContext.getSession();
		int i;
		ArrayList<Info> info = new ArrayList<Info>();
		info = (ArrayList) session.get("INSURE_INFO");
		for (i = 0; i < info.size(); i++) {
			if (info.get(i).getInfoid() == id) {
				break;
			}
		}
		return info.get(i);
	}

	public User UserDetail(String username) {
		try {
			Session session = util.HibernateSessionFactory.getSession();
			Query query = session.createQuery("from User where username=?");
			query.setParameter(0, username);
			List list = query.list();
			Iterator it = list.iterator();
			User log = (User) it.next();
			User user = new User();
			user.setId(log.getId());
			user.setUsername(log.getUsername());
			user.setPassword(log.getPassword());
			user.setName(log.getName());
			user.setMobile(log.getMobile());
			user.setJob(log.getJob());
			user.setBirth(log.getBirth());
			return user;

		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			util.HibernateSessionFactory.closeSession();
		}
	}

	public ArrayList<Contract> ContractInfo(int id) {
		try {
			ArrayList<Contract> mycontract = new ArrayList<>();
			Session session = util.HibernateSessionFactory.getSession();
			Query query = session.createQuery("from Contract where userid=?");
			query.setParameter(0, id);
			List list = query.list();
			Iterator it = list.iterator();

			while (it.hasNext()) {
				Contract log = (Contract) it.next();
				Contract con = new Contract();
				con.setApplicant(log.getApplicant());
				con.setBegindate(log.getBegindate());
				con.setEnddate(log.getEnddate());
				con.setId(log.getId());
				con.setInsured(log.getInsured());
				con.setInsuredid(log.getInsuredid());
				con.setInsurename(log.getInsurename());
				con.setLocation(log.getLocation());
				con.setMobile(log.getMobile());
				con.setMobile(log.getMobile());
				con.setUserid(log.getUserid());
				mycontract.add(con);
			}
			return mycontract;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			util.HibernateSessionFactory.closeSession();
		}
	}
}
