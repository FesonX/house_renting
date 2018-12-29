package cn.dao;

import java.util.List;

import cn.bean.Contract;
import cn.bean.Renter;

public interface RenterDao {
	//1.登录，电话号和密码
	public Renter login(String rid,String password);
	//2.注册
	public boolean register(Renter ad);
	//3.修改自己信息
	public boolean updateRenter(Renter ad);
	//4.修改密码
	public boolean updatePwd(Renter ad,String password);
	//5.根据用户账号查询
	public List<Renter> findRenterByName(String name);
	
	//
	public Renter findRenterByRid(String rid);
}
