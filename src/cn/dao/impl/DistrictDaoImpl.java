package cn.dao.impl;

import java.util.ArrayList;
import java.util.List;
import cn.bean.District;
import cn.dao.DistrictDao;
import cn.dbc.BaseDao;

public class DistrictDaoImpl  implements DistrictDao{
	BaseDao bs=new BaseDao();
	@Override

	public boolean doDistinct(District dis){
		String sql="insert into district(did,name,parent_id,pinyin,initial,initials,suffix,code,order) values(?,?,?,?,?,?,?,?,?)";
		List<Object> lp=new ArrayList<Object>();
		lp.add(dis.getDid());
		lp.add(dis.getName());
		lp.add(dis.getParent_id());
		lp.add(dis.getPinyin());
		lp.add(dis.getInitial());
		lp.add(dis.getInitials());
		lp.add(dis.getsuffix());
		lp.add(dis.getCode());
		lp.add(dis.getOrder());
		boolean flag=bs.update(sql, lp);
		return flag;
	}
	@Override
	//2.修改区域
	public boolean updateDistinct(District dis){
		String sql="update district set name=?,parent_id=?,pinyin=?,initial=?,initials=?,suffix=?,code=?,order=? where did=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(dis.getName());
		lp.add(dis.getParent_id());
		lp.add(dis.getPinyin());
		lp.add(dis.getInitial());
		lp.add(dis.getInitials());
		lp.add(dis.getsuffix());
		lp.add(dis.getCode());
		lp.add(dis.getOrder());
		lp.add(dis.getDid());
		boolean flag=bs.update(sql, lp);
		return flag;
	}
	
	@Override

	public boolean deleteDistinct(int did){
		String sql="delete district where did=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(did);
		boolean flag=bs.update(sql, lp);
		return flag;
	}
	@Override

	public List<District> findDistinctByDid(int did){
		List<District> list=null;
		String sql="select * from district where did=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(did);
		list=bs.query(sql, lp, District.class);
		return list;
	}
	
	@Override
	public List<District> findDistinctByName(String name){
		List<District> list=null;
		String sql="select * from district where name=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(name);
		list=bs.query(sql, lp, District.class);
		return list;
	}
	
	@Override

	public District findDistrictByDid(int did){
		District dis=null;
		List<Object> lp=new ArrayList<Object>();
		String sql="select * from district where did=?";
		lp.add(did);
		List<District> l=bs.query(sql, lp, District.class);
		if(l.size()>0)
		{
			dis=l.get(0);
		}
		return dis;
	}	
	
}
