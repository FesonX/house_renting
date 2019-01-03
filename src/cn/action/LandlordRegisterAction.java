package cn.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.dao.AdminDao;
import cn.bean.Landlord;
import cn.dao.LandlordDao;
import cn.dao.impl.LandlordDaoImpl;
import cn.dao.impl.AdminDaoImpl;
import cn.bean.District;
import cn.dao.DistrictDao;
import cn.dao.impl.DistrictDaoImpl;
import cn.framework.Action;

public class LandlordRegisterAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		AdminDao adminDao = new AdminDaoImpl();
		LandlordDao landlordDao = new LandlordDaoImpl();
		DistrictDao distinctDao = new DistrictDaoImpl();
		boolean Flag = false;
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String realname = request.getParameter("realname");
		String lid = request.getParameter("lid");
		String gender = request.getParameter("gender");
		String didname = request.getParameter("didname");
		int did = 0;
		List<District> list = distinctDao.findDistinctByName(didname);
		for(int    i=0;    i<list.size();    i++)    {   
			did = list.get(i).getDid();
		   } 
		Landlord landlord = new Landlord(lid, name, gender, realname, "0", password, did);
		Flag = landlordDao.register(landlord);
		//Admin admin = new Admin(uid, name, realname, password, gender, identify, qq, Wechat);
		
		//Flag = adminDao.register(admin);
		if (Flag) {
			return "jumpLandlordLogin.jsp";
		}
		else {
			return "registerResult";
		}
			
	}

}