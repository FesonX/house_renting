package cn.dao.impl;

import java.util.ArrayList;
import java.util.List;

import cn.bean.Admin;
import cn.dao.AdminDao;
import cn.dbc.BaseDao;

public class AdminDaoImpl implements AdminDao {
	BaseDao bs=new BaseDao();
	@Override
	public Admin login(String aid, String password) {
		Admin Admin=null;
		String sql="select * from `admin` where aid=? and password=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(aid);
		lp.add(password);
		List<Admin> l=bs.query(sql, lp, Admin.class);
		if(l.size()>0)
		{
			Admin=l.get(0);
		}
		return Admin;
	}

	@Override
	public boolean updatePwd(Admin ma, String password) {
		boolean Flag=false;
		String sql="update Admin set password=? where aid=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(password);
		lp.add(ma.getaid());
		Flag=bs.update(sql, lp);
		return Flag;
	}

	@Override
	public List<Admin> adminSearch(String[] propertyname, Object[] value) {
		// TODO Auto-generated method stub
		return null;
	}

}
