package cn.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.bean.Renter;
import cn.dao.RenterDao;
import cn.dao.impl.RenterDaoImpl;
import cn.framework.Action;

public class RenterLoginAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		RenterDao renterDao = new RenterDaoImpl();
		Renter renter = null;
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		renter = renterDao.login(name, password);
		
		if (renter != null) {
			return "index.jsp";
		}
		else
		{
			return "login.jsp";
		}
	}

}
