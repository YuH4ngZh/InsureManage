package action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import model.Contract;
import model.Info;

public class BuyerDetailAction extends ActionSupport {
	public String execute() throws Exception {
		String name = ServletActionContext.getRequest().getParameter("name");
		ActionContext actionContext = ActionContext.getContext();
		Map session = actionContext.getSession();
		ArrayList<Contract> contract = (ArrayList) session.get("CONTRACT");
		ArrayList<Contract> choosed = new ArrayList<>();
		for (int i = 0; i < contract.size(); i++) {
			if (contract.get(i).getInsurename().equals(name)) {
				choosed.add(contract.get(i));
			}
		}
		session.put("CHOOSED", choosed);
		if (session.get("USER_TYPE").equals("¹ÜÀíÔ±"))
			return SUCCESS;
		else
			return INPUT;
	}
}
