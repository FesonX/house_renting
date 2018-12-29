package cn.dao;

import java.util.List;

import cn.bean.District;

public interface DistrictDao {
	//Add District
	public boolean doDistinct(District Dis);

	public boolean updateDistinct(District Dis);

	public boolean deleteDistinct(int did);

	public List<District> findDistinctByDid(int did);

	public List<District> findDistinctByName(String name);

	public District findDistrictByDid(int did);

}
