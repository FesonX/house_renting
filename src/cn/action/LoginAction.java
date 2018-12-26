package cn.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.bean.Renter;
import cn.dao.RenterDao;
import cn.dao.impl.RenterDaoImpl;
import cn.framework.Action;

public class LoginAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		RenterDao adminDao = new RenterDaoImpl();
		Renter admin = null;
		String phone = request.getParameter("phone");
		String password = request.getParameter("password");
		admin = adminDao.login(phone, password);
		if (admin != null) {
			return "index.jsp";
		}
		else
		{
			return "login.jsp";
		}
	}

}
