package cn.dao;

import java.util.List;

import cn.bean.Landlord;

public interface LandlordDao {
	
	public Landlord login(String name,String password);
	
	public boolean updatePwd(Landlord ag,String password);

	public boolean doLandlord(Landlord ag);

	public boolean updateLandlord(Landlord ag);

	public boolean deleteLandlord(int lid);

	public List<Landlord> findLandlordByDid(int did);

	public List<Landlord> findLandlord();

	public Landlord findLandlordBy(String lid);
	public List<Landlord> findLandlordByLid(String lid);
	boolean register(Landlord ag);
}
