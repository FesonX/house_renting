package cn.dao;

import java.util.List;

import cn.bean.Renter;

public interface RenterDao {

	public Renter login(String name,String password);

	public boolean register(Renter ad);

	public Renter updateRenter(Renter ad);

	public boolean updatePwd(Renter ad,String password);

	public List<Renter> findRenterByName(String name);
	
	public Renter findRenterByRid(String rid);
	
	public boolean delRenter(String rid);
	
	public List<Renter> showAllRenters();
}
