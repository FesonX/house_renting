package cn.action;

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
		
		String rid=request.getParameter("rid");
		String lid=request.getParameter("lid");
		String hid=request.getParameter("hid");
		
		List<Book> bookList = bd.findBookByRid(rid);
		for(Book b:bookList) {
			String lidd = b.getLid();
			int hidd = b.getHid();
			if(Integer.parseInt(hid) == hidd&&lid.equals(lidd)) {
				request.setAttribute("houseList", bookList);
				return "showMyBook.jsp";
			}
		}
		
		return null;
	}

}
