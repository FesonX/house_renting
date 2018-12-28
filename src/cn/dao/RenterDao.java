package cn.dao;

import cn.bean.Renter;

public interface RenterDao {
	public Renter login(String rid,String password);
	public boolean register(Renter ad);
	public boolean updateRenter(Renter ad);
	public boolean updatePwd(Renter ad,String password);
}
