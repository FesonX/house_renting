package cn.dao;

import cn.bean.Admin;

public interface AdminDao {
	//1.��¼
	public Admin login(String aid,String password);
	//2.�޸�����
	public boolean updatePwd(Admin ma,String password);
}