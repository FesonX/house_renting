package cn.action;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.dao.LandlordDao;
import cn.dao.impl.LandlordDaoImpl;
import cn.framework.Action;
public class LandlordPwAction implements Action{
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		//AdminDao adminDao = new AdminDaoImpl();
		LandlordDao landlordDao = new LandlordDaoImpl();
		//DistrictDao distinctDao = new DistrictDaoImpl();
		boolean Flag = false;
		
		String new_password = request.getParameter("new_password");
		
		System.out.println(new_password);
		
		
		//Landlord landlord = new Landlord(lid, name, gender, realname, "0", new_password, did);
		//Flag = landlordDao.updatePwd(landlord, new_password);
		//Flag = landlordDao.updateLandlord(landlord);
		if (Flag) {
			return "LandlordInfo.jsp";
		}
		else
			return "register.jsp";	
	}
}
