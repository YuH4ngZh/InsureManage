package dao;

import java.util.ArrayList;

import model.Contract;
import model.Info;
import model.User;

public interface GettingInfoDao {
	public ArrayList<Info> InsureInfo();//��¼ʱ��ȡ���б�����Ϣ 
	public ArrayList<Contract> ContractInfo(int id);//�û���¼ʱ��ȡ�û��ı�����Ϣ
	public Info DetailInfo(int id);//�û�ѡ����ϸ���գ�ͨ������ID��ȡȫ����Ϣ
	public User UserDetail(String username);//�û�ѡ������ʱ�����û�����ȡ�û���Ϣ���γɱ�
}
