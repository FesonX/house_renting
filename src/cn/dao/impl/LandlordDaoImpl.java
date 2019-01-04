package cn.dao.impl;

import java.util.ArrayList;

import java.util.List;

import cn.bean.Landlord;
import cn.dao.LandlordDao;
import cn.dbc.BaseDao;

public class LandlordDaoImpl implements LandlordDao {
	BaseDao bs=new BaseDao();
	@Override
	public Landlord login(String name, String password) {
		Landlord Landlord=null;
		List<Object> lp=new ArrayList<Object>();
		String sql="select * from landlord where name=? and password=?";
		lp.add(name);
		lp.add(password);
		List<Landlord> l=bs.query(sql, lp, Landlord.class);
		if(l.size()>0)
		{
			Landlord=l.get(0);
		}
		return Landlord;
	}
	
	@Override
	public boolean register(Landlord ag) {
		boolean Flag=false;
		String sql="insert into landlord values(?,?,?,?,?,?,?)";
		List<Object> lp=new ArrayList<Object>();
		lp.add(ag.getlid());
		lp.add(ag.getname());
		lp.add(ag.getgender());
		lp.add(ag.getrealname());
		lp.add(ag.getAvatar());
		lp.add(ag.getPassword());
		lp.add(ag.getdid());
		Flag=bs.update(sql, lp);
		return Flag;
	}


	@Override
	public boolean updatePwd(Landlord ag,String password) {
		boolean Flag=false;
		String sql="update landlord set password=? where lid=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(password);
		lp.add(ag.getlid());
		Flag=bs.update(sql, lp);
		return Flag;
	}

	@Override
	public boolean doLandlord(Landlord ag) {
		boolean Flag=false;
		String sql="insert into landlord values(?,?,?,?,?,?,?)";
		List<Object> lp=new ArrayList<Object>();
		lp.add(ag.getlid());
		lp.add(ag.getname());
		lp.add(ag.getgender());
		lp.add(ag.getrealname());
		lp.add(ag.getAvatar());
		lp.add(ag.getPassword());
		lp.add(ag.getdid());
		Flag=bs.update(sql, lp);
		return Flag;
	}

	@Override
	public boolean updateLandlord(Landlord ag) {
		boolean Flag=false;
		String sql="update landlord set name=?,gender=?,realname=?,Avatar=?,did=? where lid=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(ag.getname());
		lp.add(ag.getgender());
		lp.add(ag.getrealname());
		lp.add(ag.getAvatar());
		lp.add(ag.getdid());
		lp.add(ag.getlid());
		Flag=bs.update(sql, lp);
		return Flag;
	}

	@Override
	public boolean deleteLandlord(String lid) {
		boolean Flag=false;
		String sql="delete from landlord where lid=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(lid);
		Flag=bs.update(sql, lp);
		return Flag;
	}

	@Override
	public List<Landlord> findLandlordByDid(int did) {
		List<Landlord> list=null;
		String sql="select * from landlord where did=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(did);
		list=bs.query(sql, lp, Landlord.class);
		return list;
	}

	@Override
	public List<Landlord> findLandlord() {
		List<Landlord> list=null;
		String sql="select * from landlord";
		List<Object> lp=new ArrayList<Object>();
		list=bs.query(sql, lp, Landlord.class);
		return list;
	}

	@Override
	public Landlord findLandlordBy(String lid) {
		Landlord Landlord=null;
		List<Object> lp=new ArrayList<Object>();
		String sql="select * from landlord where lid=?";
		lp.add(lid);
		List<Landlord> l=bs.query(sql, lp, Landlord.class);
		if(l.size()>0)
		{
			Landlord=l.get(0);
		}
		return Landlord;
	}

	@Override
	public List<Landlord> findLandlordByLid(String lid) {
		Landlord Landlord=null;
		List<Object> lp=new ArrayList<Object>();
		String sql="select * from landlord where lid=?";
		lp.add(lid);
		List<Landlord> l=bs.query(sql, lp, Landlord.class);
		return l;
	}
}
