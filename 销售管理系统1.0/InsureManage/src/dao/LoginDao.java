package dao;

public interface LoginDao {
	public String UserisExist(String name,String password);//��ͨ�û���½�ж�
	public String WorkerisExist(String name,String password);//��ҵ��Ա��½�ж�
	public String ControllerisExist(String name,String password);//����Ա��½�ж�
}
