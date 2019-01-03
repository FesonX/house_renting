package cn.dao;

import java.sql.SQLException;
import java.util.List;

import cn.bean.Book;

public interface BookDao {
	//1.ԤԼ�����ˣ����ԤԼ��Ϣ��
	public boolean doBook(Book bo);
	//2.�鿴ԤԼ��Ϣ��(�û�)
	public List<Book> findBookByRid(String rid);
	//3.�鿴ԤԼ��Ϣ�������ˣ�
	public List<Book> findBookByLid(String lid);
	public List<Book> findBookByHid(int hid) ;
	public boolean UpdateBookReviewed(int bid,int reviewed);
	public int countBookSize() throws SQLException;
}
