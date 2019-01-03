package cn.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.bean.Book;
import cn.bean.House;
import cn.dao.BookDao;
import cn.dao.HouseDao;
import cn.dao.impl.BookDaoImpl;
import cn.dao.impl.HouseDaoImpl;
import cn.framework.Action;

public class FindBookbylidAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		List<Book> Lbook = new ArrayList<>();
		BookDao bookDao = new BookDaoImpl();
		String lid=request.getParameter("lid");
		try {
			Lbook = bookDao.findBookByLid(lid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("Lbook", Lbook);
		return "ShowAllBook.jsp";
	}

}
