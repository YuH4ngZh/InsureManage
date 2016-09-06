package dao;

import java.util.ArrayList;

import model.Contract;
import model.Info;
import model.User;

public interface GettingInfoDao {
	public ArrayList<Info> InsureInfo();//登录时获取所有保险信息 
	public ArrayList<Contract> ContractInfo(int id);//用户登录时获取用户的保单信息
	public Info DetailInfo(int id);//用户选择详细保险，通过保险ID获取全部信息
	public User UserDetail(String username);//用户选择购买保险时根据用户名获取用户信息，形成表单
}
