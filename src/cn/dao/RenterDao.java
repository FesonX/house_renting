package cn.dao;

import cn.bean.Renter;

public interface RenterDao {
	//1.��¼���绰�ź�����
	public Renter login(String name,String password);
	//2.ע��
	public boolean register(Renter ad);
	//3.�޸��Լ���Ϣ
	public boolean updateRenter(Renter ad);
	//4.�޸�����
	public boolean updatePwd(Renter ad,String password);
}
