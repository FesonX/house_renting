package cn.dao.impl;

import java.util.ArrayList;
import java.util.List;

import cn.bean.Evaluate;
import cn.dao.EvaluateDao;
import cn.dbc.BaseDao;

public class EvaluateDaoImpl implements EvaluateDao {

	BaseDao bs=new BaseDao();
	@Override
	public boolean doEvaluate(Evaluate ev) {
		String sql="insert into evaluate(evid,hid,uid,content,star) values(?,?,?,?,?)";
		List<Object> lp=new ArrayList<Object>();
		lp.add(ev.geteid());
		lp.add(ev.getHid());
		lp.add(ev.getrid());
		lp.add(ev.getcontent());
		lp.add(ev.getstar());
		boolean flag=bs.update(sql, lp);
		return flag;
	}

	@Override
	public List<Evaluate> findEvaluateByHid(int hid) {
		List<Evaluate> list=null;
		String sql="select * from evaluate where hid=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(hid);
		list=bs.query(sql, lp, Evaluate.class);
		return list;
	}

	@Override
	public List<Evaluate> findEvaluateByRid(String rid) {
		List<Evaluate> list=null;
		String sql="select * from evaluate where rid=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(rid);
		list=bs.query(sql, lp, Evaluate.class);
		return list;
	}

	@Override
	public boolean deleteEvaluateByEid(int eid) {
		String sql="delete evaluate where eid=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(eid);
		boolean flag=bs.update(sql, lp);
		return flag;
	}

	@Override
	public boolean updateEvaluate(Evaluate ev) {
		String sql="update evaluate set hid=?,rid=?,content=?,star=? where eid=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(ev.getHid());
		lp.add(ev.getrid());
		lp.add(ev.getcontent());
		lp.add(ev.getstar());
		lp.add(ev.geteid());
		boolean flag=bs.update(sql, lp);
		return flag;
	}

}
