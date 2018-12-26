package cn.dao;

import java.util.List;

import cn.bean.Landlord;

public interface LandlordDao {
	//1.登录
	public Landlord login(int lid,String password);
	//2.修改密码
	public boolean updatePwd(Landlord ag,String password);
	//3.添加房东
	public boolean doLandlord(Landlord ag);
	//4.修改房东
	public boolean updateLandlord(Landlord ag);
	//5.删除房东
	public boolean deleteLandlord(int lid);
	//6.通过镇区查询房东
	public List<Landlord> findLandlordByDid(int did);
	//7.查询全部房东
	public List<Landlord> findLandlord();
	//8.查询某个房东
	public Landlord findLandlordBy(int lid);
}
