package cn.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		System.out.println(renter);
		
		if (renter != null) {
			HttpSession session=request.getSession();
			session.setAttribute("renter", renter);
			//request.setAttribute("renter", renter);
			return "RenterInfo.jsp";
		}
		else
		{
			return "index.jsp";
		}
	}

}
