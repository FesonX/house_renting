package cn.dao;

import java.util.List;

import cn.bean.Book;

public interface BookDao {
	//1.预约经纪人（添加预约信息表）
	public boolean doBook(Book bo);
	//2.查看预约信息表(用户)
	public List<Book> findBookByRid(String rid);
	//3.查看预约信息表（经纪人）
	public List<Book> findBookByLid(String lid);
}
