package cn.action;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.bean.Landlord;
import cn.dao.LandlordDao;
import cn.dao.impl.LandlordDaoImpl;

import cn.framework.Action;
public class LandlordPwAction implements Action{
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		LandlordDao landlordDao = new LandlordDaoImpl();
		boolean Flag=false;
		String password = request.getParameter("new_password");
		Landlord l=(Landlord) request.getSession().getAttribute("landlord");
		Flag=landlordDao.updatePwd(l, password);
		if (Flag) {
			HttpSession session = request.getSession();
			l.setPassword(password);
			session.setAttribute("Landlord", l);
			return "LandlordInfo.jsp";
		} else
			return "LandlordPw.jsp";
	}
}
