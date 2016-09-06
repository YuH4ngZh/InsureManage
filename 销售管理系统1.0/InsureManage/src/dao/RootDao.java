package dao;

import java.util.ArrayList;

import model.*;

public interface RootDao {
	public ArrayList <User> UserInfo();//����Ա��¼��ȡ�û���Ϣ
	public ArrayList <Worker> WorkerInfo();//����Ա��¼��ȡ��ҵ��Ա��Ϣ
	public ArrayList <Operation> Operation();//����Ա��¼��ȡ������Ϣ
	public ArrayList <Info> InsureInfo();//����Ա��¼��ȡ������Ϣ
	public ArrayList <Contract> ContractInfo();//����Ա��¼������Ϣ
	public void DeleteInfo(int infoid);//����Աɾ��������Ϣ	
	public void DeleteWorker(int workerid);//����Աɾ����ҵ��Ա��Ϣ
}
