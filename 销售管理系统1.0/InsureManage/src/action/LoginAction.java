package action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.AddDao;
import dao.GettingInfoDao;
import dao.LoginDao;
import dao.RootDao;
import dao.impl.AddDaoImp;
import dao.impl.GettingInfoDaoImp;
import dao.impl.LoginDaoImp;
import dao.impl.RootDaoImp;
import model.Info;
import model.Operation;
import model.User;

//��дһ��POJO��Ϊ���������Action�࣬��������ʵ����һ��Action�ӿ�
public class LoginAction extends ActionSupport {
	private LoginDao loginDao = new LoginDaoImp();
	private GettingInfoDao getDao = new GettingInfoDaoImp();
	private AddDao adddao = new AddDaoImp();
	private String username;
	private String password;
	private char type;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public char getType() {
		return type;
	}

	public void setType(char type) {
		this.type = type;
	}
 
	// execute����������������
	@SuppressWarnings("unchecked")
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ActionContext actionContext = ActionContext.getContext();
		Map session = actionContext.getSession();
		String state = "";
		if (type == '1') {
			state = loginDao.UserisExist(username, password);
			session.put("USER_TYPE", "��ͨ�û�");
		} else if (type == '2') {
			state = loginDao.WorkerisExist(username, password);
			session.put("USER_TYPE", "ҵ����Ա");
		} else {
			state = loginDao.ControllerisExist(username, password);
			session.put("USER_TYPE", "����Ա");
		}
		if (state.equals("-1")) {
			this.addFieldError("username", "�û�������");
			return INPUT;
		} else if (state.equals("-2")) {
			this.addFieldError("password", "�������");
			return INPUT;
		} else if (state.equals("")) {
			return INPUT;
		} else {
			ArrayList<Info> info = new ArrayList<>();
			info = getDao.InsureInfo();
			session.put("INSURE_INFO", info);
			session.put("USER_NAME", state);
			// session����û���Ϣ
			if (session.get("USER_TYPE").equals("��ͨ�û�")) {
				session.put("MYCONTRACT", getDao.ContractInfo(getDao.UserDetail(state).getId()));
			}
			if (session.get("USER_TYPE").equals("����Ա")) {
				RootDao root = new RootDaoImp();
				session.put("USER_INFO", root.UserInfo());
				session.put("WORKER_INFO", root.WorkerInfo());
				session.put("OPERATION", root.Operation());
				session.put("CONTRACT", root.ContractInfo());
			}else{
				RootDao root = new RootDaoImp();
				session.put("USER_INFO", root.UserInfo());
				session.put("CONTRACT", root.ContractInfo());
				double sum = 0;
				for(int i=0;i<info.size();i++){
					sum = sum + info.get(i).getPrice() * info.get(i).getBuyer();
				}
				session.put("WINNER", sum);
			}
			
			//��Ӳ�����Ϣ
			Operation op = new Operation();
			op.setDate(new Date());
			op.setUser((String)session.get("USER_NAME"));
			op.setUser_type((String)session.get("USER_TYPE"));
			op.setOperate_type("��¼");
			adddao.AddOperation(op);
			return SUCCESS;
		}
	}
}
