package cn.dao;

import cn.bean.Admin;

public interface AdminDao {

	public Admin login(int aid,String password);

	public boolean updatePwd(Admin ma,String password);
}
