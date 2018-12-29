package cn.dao.impl;

import java.util.ArrayList;
import java.util.List;

import cn.bean.Renter;
import cn.dao.RenterDao;
import cn.dbc.BaseDao;

public class RenterDaoImpl implements RenterDao {
	BaseDao bs=new BaseDao();
	@Override
	public Renter login(String rid, String password) {
		Renter Renter=null;
		List<Object> lp=new ArrayList<Object>();
		String sql="select * from Renter where rid=? and password=?";
		lp.add(rid);
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
		String sql="insert into Renter values(?,?,?,?,?,?,?,?)";
		List<Object> lp=new ArrayList<Object>();
		lp.add(ad.getrid());
		lp.add(ad.getname());
		lp.add(ad.getgender());
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
		String sql="update Renter set password=? where rid=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(password);
		lp.add(ad.getrid());
		Flag=bs.update(sql, lp);
		return Flag;
	}

	@Override
	public boolean updateRenter(Renter ad) {
		boolean Flag=false;
		String sql="update Renter set realname=?,gender=?,Avater=?,qq=?,wechar=? where rid=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(ad.getRealname());
		lp.add(ad.getgender());
		lp.add(ad.getAvatar());
		lp.add(ad.getQq());
		lp.add(ad.getWechat());
		lp.add(ad.getrid());
		Flag=bs.update(sql, lp);
		return Flag;
	}

	@Override
	public List<Renter> findRenterByName(String name) {
		List<Renter> list=null;
		String sql="select * from renter where name=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(name);
		list=bs.query(sql, lp, Renter.class);
		return list;
	}
	
	
	@Override
	public Renter findRenterByRid(String rid) {
		Renter renter=null;
		List<Object> lp=new ArrayList<Object>();
		String sql="select * from renter where lid=?";
		lp.add(rid);
		List<Renter> r=bs.query(sql, lp, Renter.class);
		if(r.size()>0)
		{
			renter=r.get(0);
		}
		return renter;
	}
}
