package cn.dao.impl;

import java.util.ArrayList;
import java.util.List;

import cn.bean.Renter;
import cn.dao.RenterDao;
import cn.dbc.BaseDao;

public class RenterDaoImpl implements RenterDao {
	BaseDao bs=new BaseDao();
	@Override
	public Renter login(String name, String password) {
		Renter Renter=null;
		List<Object> lp=new ArrayList<Object>();
		String sql="select * from renter where name=? and password=?";
		lp.add(name);
		lp.add(password);
		List<Renter> l=bs.query(sql, lp, Renter.class);
		if(l.size()>0)
		{
			Renter=l.get(0);
		}
		return Renter;
	}

	@Override
	public boolean register(Renter ad) {
		boolean Flag=false;
		String sql="insert into renter values(?,?,?,?,?,?,?,?)";
		List<Object> lp=new ArrayList<Object>();
		lp.add(ad.getRid());
		lp.add(ad.getName());
		lp.add(ad.getGender());
		lp.add(ad.getRealname());
		lp.add(ad.getAvatar());
		lp.add(ad.getQq());
		lp.add(ad.getWechat());
		lp.add(ad.getPassword());
		Flag=bs.update(sql, lp);
		return Flag;
	}


	@Override
	public boolean updatePwd(Renter ad, String password) {
		boolean Flag=false;
		String sql="update renter set password=? where rid=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(password);
		lp.add(ad.getRid());
		Flag=bs.update(sql, lp);
		return Flag;
	}

	@Override
	public boolean updateRenter(Renter ad) {
		boolean Flag=false;
		String sql="update renter set realname=?,gender=?,Avater=?,qq=?,wechar=? where rid=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(ad.getRealname());
		lp.add(ad.getGender());
		lp.add(ad.getAvatar());
		lp.add(ad.getQq());
		lp.add(ad.getWechat());
		lp.add(ad.getRid());
		Flag=bs.update(sql, lp);
		return Flag;
	}

}
