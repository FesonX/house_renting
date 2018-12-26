package cn.dao;

import cn.bean.Admin;

public interface AdminDao {
	//1.µÇÂ¼
	public Admin login(int aid,String password);
	//2.ĞŞ¸ÄÃÜÂë
	public boolean updatePwd(Admin ma,String password);
}
