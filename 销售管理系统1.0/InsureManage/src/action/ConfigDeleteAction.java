package action;

import java.util.ArrayList;
import java.util.Date;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.AddDao;
import dao.RootDao;
import dao.impl.AddDaoImp;
import dao.impl.RootDaoImp;
import model.Info;
import model.Operation;

public class ConfigDeleteAction extends ActionSupport {
	private RootDao rt = new RootDaoImp();
	private AddDao add = new AddDaoImp();

	public String execute() throws Exception {
		String name = ServletActionContext.getRequest().getParameter("infoid");
		ActionContext actionContext = ActionContext.getContext();
		Map session = actionContext.getSession();
		int deleteid = Integer.parseInt(name);
		ArrayList<Info> info = (ArrayList) session.get("INSURE_INFO");
		for (int i = 0; i < info.size(); i++) {
			if (info.get(i).getInfoid() == deleteid) {
				info.remove(info.get(i));
				rt.DeleteInfo(deleteid);
				break;
			}
		}
		session.put("INSURE_INFO", info);
		
		Operation op = new Operation();
		op.setDate(new Date());
		op.setUser((String)session.get("USER_NAME"));
		op.setUser_type((String)session.get("USER_TYPE"));
		op.setOperate_type("ÅäÖÃÐÅÏ¢");
		add.AddOperation(op);
		return SUCCESS;
	}
}
