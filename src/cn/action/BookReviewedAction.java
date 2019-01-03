package cn.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.bean.Book;
import cn.dao.BookDao;
import cn.dao.impl.BookDaoImpl;
import cn.framework.Action;

public class BookReviewedAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		BookDao bookDao = new BookDaoImpl();
		int bid=Integer.parseInt(request.getParameter("bid"));
		int reviewed=Integer.parseInt(request.getParameter("reviewed"));
		bookDao.UpdateBookReviewed(bid, reviewed);
		return "index.jsp";
	}
}
