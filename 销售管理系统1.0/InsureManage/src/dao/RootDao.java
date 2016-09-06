package dao;

import java.util.ArrayList;

import model.*;

public interface RootDao {
	public ArrayList <User> UserInfo();//管理员登录获取用户信息
	public ArrayList <Worker> WorkerInfo();//管理员登录获取从业人员信息
	public ArrayList <Operation> Operation();//管理员登录获取操作信息
	public ArrayList <Info> InsureInfo();//管理员登录获取保险信息
	public ArrayList <Contract> ContractInfo();//管理员登录保单信息
	public void DeleteInfo(int infoid);//管理员删除保险信息	
	public void DeleteWorker(int workerid);//管理员删除从业人员信息
}
