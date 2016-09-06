package action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sun.glass.ui.Application;

public class CancelAction extends ActionSupport {
 
	public String execute() throws Exception {
		ActionContext actionContext = ActionContext.getContext();
		Map session = actionContext.getSession();
		//System.out.println(session.isEmpty());
		session.clear();
		
		return SUCCESS;
	}

}