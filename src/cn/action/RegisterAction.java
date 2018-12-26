package cn.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.bean.Renter;
import cn.dao.RenterDao;
import cn.dao.impl.RenterDaoImpl;
import cn.framework.Action;

public class RegisterAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		RenterDao adminDao = new RenterDaoImpl();
		boolean Flag = false;
		String uname = request.getParameter("uname");
		String password = request.getParameter("password");
		String realname = request.getParameter("realname");
		String uid = request.getParameter("uid");
		String sex = request.getParameter("sex");
		String identify = request.getParameter("identify");
		String qq = request.getParameter("qq");
		String wechat = request.getParameter("wechat");
		Renter admin = new Renter(uid, uname, realname, password, sex, identify, qq, wechat);
		Flag = adminDao.register(admin);
		if (Flag) {
			return "login.jsp";
		}
		else
			return "register.jsp";
	}

}
