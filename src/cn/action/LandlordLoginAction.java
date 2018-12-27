package cn.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.bean.Landlord;
import cn.dao.LandlordDao;
import cn.dao.impl.LandlordDaoImpl;
import cn.framework.Action;

public class LandlordLoginAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		LandlordDao landlordDao = new LandlordDaoImpl();
		Landlord landlord = null;
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		landlord = landlordDao.login(name, password);
		
		if (landlord != null) {
			return "index.jsp";
		}
		else
		{
			return "login.jsp";
		}
	}

}
