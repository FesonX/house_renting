package cn.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.bean.Admin;
import cn.dao.AdminDao;
import cn.dao.impl.AdminDaoImpl;
import cn.framework.Action;

public class AdminLoginAction implements Action{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		AdminDao adminDao = new AdminDaoImpl();
		Admin admin = null;
		String phone = request.getParameter("name");
		String password = request.getParameter("password");
		admin = adminDao.login(phone, password);
		if(admin != null) {
			return "adminCenter.jsp";
		}
		else {
			return "adminLogin.jsp";
		}
	}
}
