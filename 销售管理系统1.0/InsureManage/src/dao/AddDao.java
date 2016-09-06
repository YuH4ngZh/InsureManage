package dao;

import model.Contract;
import model.Info;
import model.Operation;

public interface AddDao {
	public void AddContract(Contract contract);//新增保单信息（一旦生成一般情况不允许修改）
	public void AddOrUpdateInfo(Info info);//管理员新增或更新配置信息；
	public void AddOperation(Operation operation);//新增操作信息
	public void AddBuyer(Info info);//用户购买时增加购买量
}
