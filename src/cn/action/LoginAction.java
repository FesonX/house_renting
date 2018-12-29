package cn.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.bean.Renter;
import cn.dao.RenterDao;
import cn.dao.impl.RenterDaoImpl;
import cn.framework.Action;

public class LoginAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		RenterDao renterDao = new RenterDaoImpl();
		Renter renter = null;
		String phone = request.getParameter("phone");
		String password = request.getParameter("password");
		renter = renterDao.login(phone, password);
		if (renter != null) {
			HttpSession session=request.getSession();
			session.setAttribute("renter", renter);
			return "RenterInfo.jsp";
		}
		else
		{
			return "login.jsp";
		}
	}

}
