package cn.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
		lp.add(co.getRid());
		lp.add(co.getLid());
		lp.add(co.getHid());
		lp.add(co.getDuration());
		lp.add(co.getSigndate());
		lp.add(co.getReviewed());
		lp.add(co.getPrice());
		Flag=bs.update(sql, lp);
		return Flag;
	}

	@Override
	public boolean updateContract(Contract co) {
		boolean Flag=false;
		String sql="update contract set rid=?,lid=?,hid=?,uid2=?,signtime=?,duration=?,reviewed=? where cid=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(co.getRid());
		lp.add(co.getLid());
		lp.add(co.getHid());
		lp.add(co.getDuration());
		lp.add(co.getSigndate());
		lp.add(co.getReviewed());
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

	public int countContractSize() throws SQLException {
		Connection conn = bs.getConnection();
		StringBuffer sqlBuffer = new StringBuffer();
		sqlBuffer.append("select * from contract");
		PreparedStatement pstmt = conn.prepareStatement(sqlBuffer.toString());
		ResultSet rs = pstmt.executeQuery();
		rs.last();
		return rs.getRow();
	}
	public boolean updateContractReviewed(int cid) {
		String sql = "update contract set reviewed=? where cid=?";
		List<Object> lp = new ArrayList<Object>();
		lp.add(1);
		lp.add(cid);
		Boolean flag= bs.update(sql, lp);
		return flag;
	}

	@Override
	public List<Contract> findContractByHid(int hid) {
		List<Contract> list=null;
		String sql="select * from contract where hid=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(hid);
		list=bs.query(sql, lp, Contract.class);
		return list;
	}
}
