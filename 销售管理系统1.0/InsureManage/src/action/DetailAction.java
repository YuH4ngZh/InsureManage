package action;

import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.GettingInfoDao;
import dao.impl.GettingInfoDaoImp;

public class DetailAction extends ActionSupport {
	private int InfoId;
	GettingInfoDao detail = new GettingInfoDaoImp();

	public int getInfoId() {
		return InfoId;
	}

	public void setInfoId(int infoId) {
		InfoId = infoId;
	}

	public String execute() throws Exception {
		String Infoid =  ServletActionContext.getRequest().getParameter("Infoid");
		int sum= Integer.parseInt(Infoid);
		
		ActionContext actionContext = ActionContext.getContext();
		Map session = actionContext.getSession();
		Map request = (Map) actionContext.get("request");
		request.put("DETAIL", detail.DetailInfo(sum));
		return SUCCESS;
	}
}
