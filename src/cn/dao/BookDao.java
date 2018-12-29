package cn.dao;

import java.util.List;

import cn.bean.Book;

public interface BookDao {
	public boolean doBook(Book bo);
	public List<Book> findBookByRid(String rid);
	public List<Book> findBookByLid(String lid);
	public int countBookSize();
}
