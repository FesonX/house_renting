package cn.dao.impl;

import java.util.ArrayList;
import java.util.List;

import cn.bean.Contract;
import cn.dao.ContractDao;
import cn.dbc.BaseDao;

public class ContractDaoImpl implements ContractDao {
	BaseDao bs=new BaseDao();
	@Override
	public boolean doContract(Contract co) {
		boolean Flag=false;
		String sql="insert into contract values(?,?,?,?,?,?,?,?)";
		List<Object> lp=new ArrayList<Object>();
		lp.add(co.getCid());
		lp.add(co.getrid());
		lp.add(co.getlid());
		lp.add(co.gethid());
		lp.add(co.getDuration());
		lp.add(co.getsigndate());
		lp.add(co.getreviewed());
		lp.add(co.getPrice());
		Flag=bs.update(sql, lp);
		return Flag;
	}

	@Override
	public boolean updateContract(Contract co) {
		boolean Flag=false;
		String sql="update contract set rid=?,lid=?,hid=?,uid2=?,signtime=?,duration=?,reviewed=? where cid=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(co.getrid());
		lp.add(co.getlid());
		lp.add(co.gethid());
		lp.add(co.getDuration());
		lp.add(co.getsigndate());
		lp.add(co.getreviewed());
		lp.add(co.getCid());
		Flag=bs.update(sql, lp);
		return Flag;
	}

	@Override
	public boolean deleteContract(int cid) {
		boolean Flag=false;
		String sql="delete contract where cid=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(cid);
		Flag=bs.update(sql, lp);
		return Flag;
	}

	@Override
	public List<Contract> findContractByLid(String lid) {
		List<Contract> list=null;
		String sql="select * from contract where lid=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(lid);
		list=bs.query(sql, lp, Contract.class);
		return list;
	}

	@Override
	public List<Contract> findContractByRid(String rid) {
		List<Contract> list=null;
		String sql="select * from contract where rid=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(rid);
		list=bs.query(sql, lp, Contract.class);
		return list;
	}
/*
	@Override
	public List<Contract> findContractByrid(int rid) {
		List<Contract> list=null;
		String sql="select * from contract where rid=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(rid);
		list=bs.query(sql, lp, Contract.class);
		return list;
	}
*/
}
