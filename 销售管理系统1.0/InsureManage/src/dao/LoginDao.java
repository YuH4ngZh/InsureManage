package dao;

public interface LoginDao {
	public String UserisExist(String name,String password);//普通用户登陆判断
	public String WorkerisExist(String name,String password);//从业人员登陆判断
	public String ControllerisExist(String name,String password);//管理员登陆判断
}
