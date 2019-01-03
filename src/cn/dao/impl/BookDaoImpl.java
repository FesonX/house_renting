package cn.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.bean.Book;
import cn.dao.BookDao;
import cn.dbc.BaseDao;

public class BookDaoImpl implements BookDao {
 
	BaseDao bs=new BaseDao();
	@Override
	public boolean doBook(Book bo) {
		String sql="insert into book(bid,rid,lid,hid,reviewed,booktime) values(?,?,?,?,?,?)";
		List<Object> lp=new ArrayList<Object>();
		lp.add(bo.getBid());
		lp.add(bo.getRid());
		lp.add(bo.getLid());
		lp.add(bo.getHid());
		lp.add(bo.getReviewed());
		lp.add(bo.getBooktime());
		
		boolean flag=bs.update(sql, lp);
		return flag;
	}

	@Override
	public List<Book> findBookByRid(String rid) {
		List<Book> list=null;
		String sql="select * from book where rid=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(rid);
		list=bs.query(sql, lp, Book.class);
		return list;
	}

	@Override
	public List<Book> findBookByLid(String lid) {
		List<Book> list=null;
		String sql="select * from book where lid=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(lid);
		list=bs.query(sql, lp, Book.class);
		return list;
	}

	@Override
	public int countBookSize() throws SQLException {
		Connection conn = bs.getConnection();
		StringBuffer sqlBuffer = new StringBuffer();
		sqlBuffer.append("select * from book");
		PreparedStatement pstmt = conn.prepareStatement(sqlBuffer.toString());
		ResultSet rs = pstmt.executeQuery();
		rs.last();
		return rs.getRow();
	}

	@Override
	public List<Book> findBookByHid(int hid) {
		List<Book> list=null;
		String sql="select * from book where hid=?";
		List<Object> lp=new ArrayList<Object>();
		lp.add(hid);
		list=bs.query(sql, lp, Book.class);
		return list;
	}

	@Override
	public boolean UpdateBookReviewed(int bid, int reviewed) {
		String sql = "update book set reviewed=? where bid=?";
		List<Object> lp = new ArrayList<Object>();
		lp.add(reviewed);
		lp.add(bid);
		Boolean flag= bs.update(sql, lp);
		return flag;
	}

}
