package cn.dao.impl;

import java.util.ArrayList;
import java.util.List;

import cn.bean.Landlord;
import cn.dao.LandlordDao;
import cn.dbc.BaseDao;

public class LandlordDaoImpl implements LandlordDao {
	BaseDao bs=new BaseDao();
	@Override
	public Landlord login(int lid, String password) {
		Landlord Landlord=null;
		List<Object> lp=new ArrayList<Object>();
		String sql="select * from Landlord where lid=? and password=?";
		lp.add(lid);
		lp.add(password);
		List<Landlord> l=bs.query(sql, lp, Landlord.class);
		if(l.size()>0)
		{
			Landlord=l.get(0);
		}
		return Landlord;
	}

	@Override
	public boolean updatePwd(Landlord ag,String password) {
		boolean Flag=false;
		String sql="update Landlord set password=? where lid=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(password);
		lp.add(ag.getlid());
		Flag=bs.update(sql, lp);
		return Flag;
	}

	@Override
	public boolean doLandlord(Landlord ag) {
		boolean Flag=false;
		String sql="insert into Landlord values(?,?,?,?,?,?,?)";
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
		String sql="update Landlord set name=?,gender=?,realname=?,Avatar=?,did=? where lid=?";
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
	public boolean deleteLandlord(int lid) {
		boolean Flag=false;
		String sql="delete Landlord where lid=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(lid);
		Flag=bs.update(sql, lp);
		return Flag;
	}

	@Override
	public List<Landlord> findLandlordByDid(int did) {
		List<Landlord> list=null;
		String sql="select * from Landlord where did=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(did);
		list=bs.query(sql, lp, Landlord.class);
		return list;
	}

	@Override
	public List<Landlord> findLandlord() {
		List<Landlord> list=null;
		String sql="select * from Landlord";
		List<Object> lp=new ArrayList<Object>();
		list=bs.query(sql, lp, Landlord.class);
		return list;
	}

	@Override
	public Landlord findLandlordBy(int lid) {
		Landlord Landlord=null;
		List<Object> lp=new ArrayList<Object>();
		String sql="select * from Landlord where lid=?";
		lp.add(lid);
		List<Landlord> l=bs.query(sql, lp, Landlord.class);
		if(l.size()>0)
		{
			Landlord=l.get(0);
		}
		return Landlord;
	}

}
