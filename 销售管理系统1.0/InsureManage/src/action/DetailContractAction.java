package action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import model.Contract;
import model.Info;

public class DetailContractAction extends ActionSupport{
	 
	public String execute() throws Exception {
		String Cid =  ServletActionContext.getRequest().getParameter("Contractid");
		int cid=Integer.parseInt(Cid);		
		ActionContext actionContext = ActionContext.getContext();
		Map session = actionContext.getSession();
		Map request = (Map) actionContext.get("request");
		ArrayList <Contract> contract = (ArrayList)session.get("MYCONTRACT");
		ArrayList <Info> info = (ArrayList)session.get("INSURE_INFO");
		String insurename = null;
		for(int i=0;i<contract.size();i++){
			if(contract.get(i).getId()==cid){
				System.out.println("into contract");
				request.put("CONTRACT", contract.get(i));
				insurename = contract.get(i).getInsurename();
				System.out.println(insurename);
				break;
			}
		}
		for(int i=0;i<info.size();i++){
			System.out.println("into info"+i);
			System.out.println(info.get(i).getName());
			if(info.get(i).getName().equals(insurename)){
				System.out.println("into info");
				request.put("INFO",info.get(i));
				break;
			}
		}
		return SUCCESS;
	}
}
