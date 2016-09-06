package action;


import java.util.ArrayList;
import java.util.Date;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.AddDao;
import dao.impl.AddDaoImp;
import model.Contract;
import model.Info;
import model.Operation;

public class AddContractAction  extends ActionSupport{
	private Contract contract;
	private AddDao add = new AddDaoImp();
	public Contract getContract() {
		return contract;
	}
	public void setContract(Contract contract) {
		this.contract = contract;
	}
	public String execute() throws Exception {
		add.AddContract(contract);
		ActionContext actionContext = ActionContext.getContext();
		Map session = actionContext.getSession();
		
		ArrayList <Contract> con = (ArrayList)session.get("MYCONTRACT");
		con.add(contract);
		session.put("MYCONTRACT", con);
		
		ArrayList <Info> info = (ArrayList)session.get("INSURE_INFO");
		for(int i=0;i<info.size();i++){
			if(contract.getInsurename().equals(info.get(i).getName())){
				Info selectedinfo = info.get(i);
				selectedinfo.setBuyer(selectedinfo.getBuyer()+1);
				add.AddBuyer(selectedinfo);
				info.get(i).setBuyer(info.get(i).getBuyer()+1);
				session.put("INSURE_INFO", info);
				break;
			}
		}
		
		Operation op = new Operation();
		op.setDate(new Date());
		op.setUser((String)session.get("USER_NAME"));
		op.setUser_type((String)session.get("USER_TYPE"));
		op.setOperate_type("¹ºÂò±£ÏÕ");
		add.AddOperation(op);
		return SUCCESS;
	}
}

