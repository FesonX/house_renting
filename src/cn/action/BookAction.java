package cn.action;

import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.bean.Book;
import cn.dao.BookDao;
import cn.dao.impl.BookDaoImpl;
import cn.framework.Action;

public class BookAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		BookDao bd = new BookDaoImpl();
		
		String rid=request.getParameter("rid");//13030645753
		String lid=request.getParameter("lid");//15982787174
		String hid=request.getParameter("hid");//38
		List<Book> bookList = bd.findBookByRid(rid);
		for(Book b:bookList) {
			String lidd = b.getLid();
			int hidd = b.getHid();
			if(Integer.parseInt(hid) == hidd&&lid.equals(lidd)) {
				request.setAttribute("bookList", bookList);
				return "showMyBook.jsp";
			}
		}
		int size = 0;
		try {
			size = bd.countBookSize();
		} catch (SQLException e) {e.printStackTrace();}
		
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = new Date();
		//System.out.println(dateFormat.format(date)); //2016-11-16 12:08:43
		
		Book b = new Book(size,rid,lid,Integer.parseInt(hid),0,dateFormat.format(date));
		bd.doBook(b);
		bookList.clear();
		bookList = bd.findBookByRid(rid);
		request.setAttribute("bookList", bookList);
		
		return "showMyBook.jsp";
	}

}
