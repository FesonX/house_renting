package cn.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.bean.Admin;
import cn.dao.AdminDao;
import cn.dao.impl.AdminDaoImpl;
import cn.framework.Action;

public class AdminPwdModifyAction implements Action{
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		AdminDao ad = new AdminDaoImpl();
		String oldPwd = request.getParameter("oldPwd");
		String newPwd = request.getParameter("newPwd");
		HttpSession session = request.getSession();
		Admin admin=(Admin) session.getAttribute("currentUser");
		boolean flag = false;
		String result = "";
		
		try {

			if(admin.password.equals(oldPwd)) {
				flag = ad.updatePwd(admin, newPwd);
				if(flag) {
					request.setAttribute("msg", "success");	
					result = "adminCenter.jsp";
				}
				else {
					request.setAttribute("msg", "failure");
					result = "adminModify.jsp"; 
				}
			}
			else {
				request.setAttribute("msg", "wrong");
				result = "adminModify.jsp";
			}

		}catch (Exception e) {e.printStackTrace();}
		return result;	
		
	}
}
