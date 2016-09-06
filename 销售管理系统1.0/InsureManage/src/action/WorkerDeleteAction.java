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
import model.Operation;
import model.Worker;

public class WorkerDeleteAction extends ActionSupport{
	private RootDao rt = new RootDaoImp();
	private AddDao add = new AddDaoImp();

	public String execute() throws Exception {
		String name = ServletActionContext.getRequest().getParameter("workerid");
		ActionContext actionContext = ActionContext.getContext();
		Map session = actionContext.getSession();
		int deleteid = Integer.parseInt(name);
		ArrayList<Worker> info = (ArrayList) session.get("WORKER_INFO");
		for (int i = 0; i < info.size(); i++) {
			if (info.get(i).getWorkerid() == deleteid) {
				info.remove(info.get(i));
				rt.DeleteWorker(deleteid);
				break;
			}
		}
		session.put("WORKER_INFO", info);
		
		Operation op = new Operation();
		op.setDate(new Date());
		op.setUser((String)session.get("USER_NAME"));
		op.setUser_type((String)session.get("USER_TYPE"));
		op.setOperate_type("管理用户");
		add.AddOperation(op);
		return SUCCESS;
	}
}

