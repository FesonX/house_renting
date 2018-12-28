package cn.dao;

import java.util.List;

import cn.bean.District;

public interface DistrictDao {
	//1.�������
	public boolean doDistrict(District Dis);
	//2.�޸�����
	public boolean updateDistrict(District Dis);
	//3.ɾ������
	public boolean deleteDistrict(int did);
	//4����������ID��ѯ
	public List<District> findDistrictByDid(int did);

}
