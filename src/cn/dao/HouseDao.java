package cn.dao;

import java.util.List;

import cn.bean.House;

public interface HouseDao {

	//1.发布房源信息
	public boolean doHouse(House ho);
	//2.修改房源信息
	public boolean updateHouse(House ho);

	 //5.修改房屋状态1（经纪人）
	 public boolean updateHouseByStatus(House ho,int status);
	 
	 /*
	// 7.修改房屋状态2（管理员）
	 public boolean updateHouseByAuditing(House ho,String auditing);
	 */
	 
	// 8.修改房屋信息（管理员给房屋分配经纪人）
	 public boolean updateHouseByLid(House ho,int lid);
	 //多条件查询
	 public List<House> housesearch(String[] propertyname,Object[] value) throws Exception;
}
