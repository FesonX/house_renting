package cn.dao.impl;

import java.util.ArrayList;
import java.util.List;

import cn.bean.Book;
import cn.dao.BookDao;
import cn.dbc.BaseDao;

public class BookDaoImpl implements BookDao {
 
	BaseDao bs=new BaseDao();
	@Override
	public boolean doBook(Book bo) {
		String sql="insert into book(bid,rid,lid,hid,booktime) values(?,?,?,?,?)";
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
	public int countBookSize() {
		String sql="select count(*) from book";
		List<Object> lp=new ArrayList<Object>();
//		list=bs.query(sql, lp, Book.class);
		return 0;
	}

}
