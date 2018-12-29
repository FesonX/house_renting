package cn.dao;

import java.util.List;

import cn.bean.Landlord;

public interface LandlordDao {
	//1.��¼
	public Landlord login(String name,String password);
	//2.�޸�����
	public boolean updatePwd(Landlord ag,String password);
	//3.��ӷ���
	public boolean doLandlord(Landlord ag);
	//4.�޸ķ���
	public boolean updateLandlord(Landlord ag);
	//5.ɾ������
	public boolean deleteLandlord(int lid);
	//6.ͨ��������ѯ����
	public List<Landlord> findLandlordByDid(int did);
	//7.��ѯȫ������
	public List<Landlord> findLandlord();
	//8.��ѯĳ������
	public Landlord findLandlordBy(int lid);
	public List<Landlord> findLandlordByLid(String lid);
	boolean register(Landlord ag);
}
