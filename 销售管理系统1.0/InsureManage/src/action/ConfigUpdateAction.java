package action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import model.Contract;
import model.Info;

public class ConfigUpdateAction extends ActionSupport{
	public String execute() throws Exception {
		String name =  ServletActionContext.getRequest().getParameter("name");	
		ActionContext actionContext = ActionContext.getContext();
		Map session = actionContext.getSession();
		Map request = (Map) actionContext.get("request");
		ArrayList <Info> info = (ArrayList)session.get("INSURE_INFO");
		Info update = new Info();
		for(int i=0;i<info.size();i++){
			if(info.get(i).getName().equals(name)){
				update = info.get(i);
			}
		}
		request.put("UPDATE", update);
		
		
		
		if(session.get("USER_TYPE").equals("¹ÜÀíÔ±")){
		return SUCCESS;
		}else{
			return INPUT;
		}
	}
}
