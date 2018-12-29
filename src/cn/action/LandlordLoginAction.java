package cn.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.bean.Landlord;
import cn.dao.LandlordDao;
import cn.dao.impl.LandlordDaoImpl;
import cn.bean.District;
import cn.dao.DistrictDao;
import cn.dao.impl.DistrictDaoImpl;

import cn.framework.Action;

public class LandlordLoginAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		LandlordDao landlordDao = new LandlordDaoImpl();
		DistrictDao districtDao = new DistrictDaoImpl();
		Landlord landlord = null;
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		landlord = landlordDao.login(name, password);
		
		if (landlord != null) {
			HttpSession session=request.getSession();
			session.setAttribute("landlord", landlord);
			District district = districtDao.findDistrictByDid(landlord.did);
			session.setAttribute("district", district);
			return "LandlordInfo.jsp";
		}
		else
			return "login.jsp";
	}

}
