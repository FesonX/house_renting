package cn.dao.impl;

import java.util.ArrayList;
import java.util.List;
import cn.bean.Distinct;
import cn.dao.DistinctDao;
import cn.dbc.BaseDao;

public class DistinctDaoImpl  implements DistinctDao{
	BaseDao bs=new BaseDao();
	@Override
	//1.添加区域
	public boolean doDistinct(Distinct dis){
		String sql="insert into distinct(did,name,parent_id,pinyin,initial,initials,suffle,code,order) values(?,?,?,?,?,?,?,?,?)";
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
	//2.修改区域
	public boolean updateDistinct(Distinct dis){
		String sql="update distinct set name=?,parent_id=?,pinyin=?,initial=?,initials=?,suffle=?,code=?,order=? where did=?";
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
	//3.删除区域
	public boolean deleteDistinct(int did){
		String sql="delete distinct where did=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(did);
		boolean flag=bs.update(sql, lp);
		return flag;
	}
	@Override
	//4。根据区域ID查询
	public List<Distinct> findDistinctByDid(int did){
		List<Distinct> list=null;
		String sql="select * from distinct where did=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(did);
		list=bs.query(sql, lp, Distinct.class);
		return list;
	}
}
