package action;

import java.util.*;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.GettingInfoDao;
import dao.impl.GettingInfoDaoImp;
import model.Info;
import model.User;

public class ContractMessageAction extends ActionSupport{
	private int InfoId;
	GettingInfoDao detail = new GettingInfoDaoImp();

	public int getInfoId() {
		return InfoId;
	}

	public void setInfoId(int infoId) {
		InfoId = infoId;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		String Infoid =  ServletActionContext.getRequest().getParameter("Infoid");
		int sum= Integer.parseInt(Infoid);
		ActionContext actionContext = ActionContext.getContext();
		Map session = actionContext.getSession();
		User user = detail.UserDetail((String)session.get("USER_NAME"));
		Info info = detail.DetailInfo(sum);
		Map request = (Map) actionContext.get("request");
		//��ȡϵͳʱ�䣬�������� ������Ч����
		Calendar c = Calendar.getInstance();
		int year = c.get(Calendar.YEAR);
		int month = c.get(Calendar.MONTH)+1;
		int day = c.get(Calendar.DAY_OF_MONTH);
		
		String date = year + "��" + month + "��" + day +"��";
		String end = year+info.getTime() + "��" + month + "��" + day +"��";
		session.put("USER_ID", user.getId());
		request.put("CONTRACT", info);
		request.put("USER", user);
		request.put("DATE", date);
		request.put("END", end);
		return SUCCESS;
	}
}
