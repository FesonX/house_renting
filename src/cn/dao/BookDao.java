package cn.dao;

import java.sql.SQLException;
import java.util.List;

import cn.bean.Book;

public interface BookDao {
	//1.预约经纪人（添加预约信息表）
	public boolean doBook(Book bo);
	//2.查看预约信息表(用户)
	public List<Book> findBookByRid(String rid);
	//3.查看预约信息表（经纪人）
	public List<Book> findBookByLid(String lid);
	public List<Book> findBookByHid(int hid) ;
	public boolean UpdateBookReviewed(int bid,int reviewed);
	public int countBookSize() throws SQLException;
}
