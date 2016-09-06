package action;

import java.util.Date;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.AddDao;
import dao.GettingInfoDao;
import dao.RootDao;
import dao.impl.AddDaoImp;
import dao.impl.GettingInfoDaoImp;
import dao.impl.RootDaoImp;
import model.Info;
import model.Operation;

public class AddOrUpdateConfigAction extends ActionSupport {
	private AddDao add = new AddDaoImp();
	private Info info;
	private GettingInfoDao getinfo = new GettingInfoDaoImp();

	public Info getInfo() {
		return info;
	}

	public void setInfo(Info info) {
		this.info = info;
	}

	public String execute() throws Exception {
		String trans = info.getType();
		if (trans.equals("1")) {
			info.setType("automobile");
		} else if (trans.equals("2")) {
			info.setType("travel");
		} else if (trans.equals("3")) {
			info.setType("family");
		} else if (trans.equals("4")) {
			info.setType("human");
		} else if (trans.equals("5")) {
			info.setType("health");
		} else if (trans.equals("6")) {
			info.setType("children");
		} else if (trans.equals("7")) {
			info.setType("money");
		} else if (trans.equals("8")) {
			info.setType("campany");
		}

		add.AddOrUpdateInfo(info);
		ActionContext actionContext = ActionContext.getContext();
		Map session = actionContext.getSession();
		session.put("INSURE_INFO", getinfo.InsureInfo());

		// 添加操作信息
		Operation op = new Operation();
		op.setDate(new Date());
		op.setUser((String) session.get("USER_NAME"));
		op.setUser_type((String) session.get("USER_TYPE"));
		op.setOperate_type("配置信息");
		add.AddOperation(op);
		if (session.get("USER_TYPE").equals("管理员")) {
			return SUCCESS;
		} else {
			return INPUT;
		}
	}
}
