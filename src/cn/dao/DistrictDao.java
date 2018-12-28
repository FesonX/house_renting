package cn.dao;

import java.util.List;

import cn.bean.District;

public interface DistrictDao {

	public boolean doDistrict(District Dis);

	public boolean updateDistrict(District Dis);

	public boolean deleteDistrict(int did);

	public List<District> findDistrictByDid(int did);

}
