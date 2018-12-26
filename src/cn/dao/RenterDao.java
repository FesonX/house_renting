package cn.dao;

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
}
