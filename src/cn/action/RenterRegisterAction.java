package cn.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.bean.Renter;
import cn.dao.RenterDao;
import cn.dao.impl.RenterDaoImpl;
import cn.framework.Action;

public class RenterRegisterAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		RenterDao renterDao = new RenterDaoImpl();
		boolean Flag = false;
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String realname = request.getParameter("realname");
		String rid = request.getParameter("rid");
		String gender = request.getParameter("gender");
		String qq = request.getParameter("qq");
		String Wechat = request.getParameter("Wechat");
		Renter renter = new Renter(rid,name,gender,realname,"0",qq,Wechat,password);
		Flag= renterDao.register(renter);
		if (Flag) {
			return "jumpRenterLogin.jsp";
		}
		else
			return "registerResult.jsp";	
	}

}
