package cn.dao;

import java.util.List;

import cn.bean.House;

public interface HouseDao {

	//1.������Դ��Ϣ
	public boolean doHouse(House ho);
	//2.�޸ķ�Դ��Ϣ
	public boolean updateHouse(House ho);

	 //5.�޸ķ���״̬1�������ˣ�
	 public boolean updateHouseByStatus(House ho,int status);
	 
	 /*
	// 7.�޸ķ���״̬2������Ա��
	 public boolean updateHouseByAuditing(House ho,String auditing);
	 */
	 
	// 8.�޸ķ�����Ϣ������Ա�����ݷ��侭���ˣ�
	 public boolean updateHouseByLid(House ho,int lid);
	 //��������ѯ
	 public List<House> housesearch(String[] propertyname,Object[] value) throws Exception;
	 
	 //search house by district
	 public List<House> houseSearchByDistrict(String district) throws Exception;
	 
}
