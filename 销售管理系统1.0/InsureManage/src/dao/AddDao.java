package dao;

import model.Contract;
import model.Info;
import model.Operation;

public interface AddDao {
	public void AddContract(Contract contract);//����������Ϣ��һ������һ������������޸ģ�
	public void AddOrUpdateInfo(Info info);//����Ա���������������Ϣ��
	public void AddOperation(Operation operation);//����������Ϣ
	public void AddBuyer(Info info);//�û�����ʱ���ӹ�����
}
