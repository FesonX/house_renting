package cn.dao;

import java.util.List;

import cn.bean.Admin;

public interface AdminDao {
	//1.µÇÂ¼
	public Admin login(String aid,String password);
	//2.ĞŞ¸ÄÃÜÂë
	public boolean updatePwd(Admin ma,String password);
	public List<Admin> adminSearch(String[] propertyname, Object[] value);
}