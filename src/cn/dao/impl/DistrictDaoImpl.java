package cn.dao.impl;

import java.util.ArrayList;
import java.util.List;
import cn.bean.District;
import cn.dao.DistrictDao;
import cn.dbc.BaseDao;

public class DistrictDaoImpl  implements DistrictDao{
	BaseDao bs=new BaseDao();
	@Override
	public boolean doDistrict(District dis){
		String sql="insert into district(did,name,parent_id,pinyin,initial,initials,suffle,code,order) values(?,?,?,?,?,?,?,?,?)";
		List<Object> lp=new ArrayList<Object>();
		lp.add(dis.getDid());
		lp.add(dis.getName());
		lp.add(dis.getParent_id());
		lp.add(dis.getPinyin());
		lp.add(dis.getInitial());
		lp.add(dis.getInitials());
		lp.add(dis.getSuffle());
		lp.add(dis.getCode());
		lp.add(dis.getOrder());
		boolean flag=bs.update(sql, lp);
		return flag;
	}
	@Override
	public boolean updateDistrict(District dis){
		String sql="update district set name=?,parent_id=?,pinyin=?,initial=?,initials=?,suffle=?,code=?,order=? where did=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(dis.getName());
		lp.add(dis.getParent_id());
		lp.add(dis.getPinyin());
		lp.add(dis.getInitial());
		lp.add(dis.getInitials());
		lp.add(dis.getSuffle());
		lp.add(dis.getCode());
		lp.add(dis.getOrder());
		lp.add(dis.getDid());
		boolean flag=bs.update(sql, lp);
		return flag;
	}
	
	@Override
	public boolean deleteDistrict(int did){
		String sql="delete district where did=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(did);
		boolean flag=bs.update(sql, lp);
		return flag;
	}
	@Override
	public List<District> findDistrictByDid(int did){
		List<District> list=null;
		String sql="select * from district where did=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(did);
		list=bs.query(sql, lp, District.class);
		return list;
	}
}
