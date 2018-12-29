package cn.dao;

import java.util.List;

import cn.bean.District;

public interface DistrictDao {
	//1.添加区域
	public boolean doDistinct(District Dis);
	//2.修改区域
	public boolean updateDistinct(District Dis);
	//3.删除区域
	public boolean deleteDistinct(int did);
	//4。根据区域ID查询
	public List<District> findDistinctByDid(int did);
	//5.根据区域name查询
	public List<District> findDistinctByName(String name);
	
	//6.
	public District findDistrictByDid(int did);

}
