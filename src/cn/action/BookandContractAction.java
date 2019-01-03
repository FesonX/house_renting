package cn.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.bean.Book;
import cn.bean.Contract;
import cn.bean.House;
import cn.dao.BookDao;
import cn.dao.ContractDao;
import cn.dao.HouseDao;
import cn.dao.impl.BookDaoImpl;
import cn.dao.impl.ContractDaoImpl;
import cn.dao.impl.HouseDaoImpl;
import cn.framework.Action;

public class BookandContractAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		List<Book> booklist = new ArrayList<>();
		List<Contract> contractlist = new ArrayList<>();
		BookDao bookDao = new BookDaoImpl();
		ContractDao contractDao=new ContractDaoImpl();
		int hid=Integer.parseInt(request.getParameter("hid"));
		try {
			booklist = bookDao.findBookByHid(hid);
			contractlist=contractDao.findContractByHid(hid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(booklist.size() == 0)
		{
			request.setAttribute("booklistnull", 1);
		}
		if(contractlist.size() == 0)
		{
			request.setAttribute("contractlistnull", 1);
		}
		request.setAttribute("booklist", booklist);
		request.setAttribute("contractlist", contractlist);
		return "ShowBookandContract.jsp";
	}
}
