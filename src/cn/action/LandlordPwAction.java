package cn.action;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.bean.Landlord;
import cn.dao.LandlordDao;
import cn.dao.impl.LandlordDaoImpl;
import cn.bean.District;
import cn.dao.DistrictDao;
import cn.dao.impl.DistrictDaoImpl;

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
