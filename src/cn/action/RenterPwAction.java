package cn.action;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.bean.Renter;
import cn.dao.RenterDao;
import cn.dao.impl.RenterDaoImpl;
import cn.framework.Action;
public class RenterPwAction implements Action{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		RenterDao RenterDao = new RenterDaoImpl();
		boolean Flag=false;
		String password = request.getParameter("new_password");
		Renter re=(Renter) request.getSession().getAttribute("renter");
		Flag=RenterDao.updatePwd(re, password);
		if (Flag) {
			HttpSession session = request.getSession();
			re.setPassword(password);
			session.setAttribute("Renter", re);
			return "RenterInfo.jsp";
		} else
			return "RenterPw.jsp";
	}
}
