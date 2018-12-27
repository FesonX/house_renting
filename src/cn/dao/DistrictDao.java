package cn.dao;

import java.util.List;


import cn.bean.District;

public interface DistrictDao {
	//1.�������
	public boolean doDistinct(District Dis);
	//2.�޸�����
	public boolean updateDistinct(District Dis);
	//3.ɾ������
	public boolean deleteDistinct(int did);
	//4����������ID��ѯ
	public List<District> findDistinctByDid(int did);
	
	public List<District> findDistinctByName(String name);

}
