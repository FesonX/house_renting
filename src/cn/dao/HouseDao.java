package cn.dao;

import java.util.List;

import cn.bean.House;

public interface HouseDao {

	public boolean doHouse(House ho);
	public boolean updateHouse(House ho);
	public boolean updateHouseByStatus(House ho,int status);
	public boolean updateHouseByLid(House ho,int lid);
	public List<House> housesearch(String[] propertyname,Object[] value) throws Exception;
	//search house by district
	public List<House> houseSearchByDistrict(String district) throws Exception;
}
