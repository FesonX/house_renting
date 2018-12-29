package cn.dao;

import java.util.List;

import cn.bean.Contract;
import cn.bean.Renter;

public interface RenterDao {
	//1.ï¿½ï¿½Â¼ï¿½ï¿½ï¿½ç»°ï¿½Åºï¿½ï¿½ï¿½ï¿½ï¿½
	public Renter login(String name,String password);
	//2.×¢ï¿½ï¿½
	public boolean register(Renter ad);
	//3.ï¿½Þ¸ï¿½ï¿½Ô¼ï¿½ï¿½ï¿½Ï¢
	public Renter updateRenter(Renter ad);
	//4.ï¿½Þ¸ï¿½ï¿½ï¿½ï¿½ï¿½
	public boolean updatePwd(Renter ad,String password);
	//5.¸ù¾ÝÓÃ»§ÕËºÅ²éÑ¯
	public List<Renter> findRenterByName(String name);
	
	//
	public Renter findRenterByRid(String rid);
}
