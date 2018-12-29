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
public class LandlordModifyAction implements Action{
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		//AdminDao adminDao = new AdminDaoImpl();
		LandlordDao landlordDao = new LandlordDaoImpl();
		DistrictDao distinctDao = new DistrictDaoImpl();
		boolean Flag = false;
		String name = request.getParameter("name");
		//String password = request.getParameter("password");
		String realname = request.getParameter("realname");
		String lid = request.getParameter("lid");
		String gender = request.getParameter("gender");
		String didname = request.getParameter("didname");
		int did = 0;
		
		System.out.println(name);
		System.out.println(realname);
		System.out.println(lid);
		System.out.println(gender);
		System.out.println(didname);
		
		List<District> list = distinctDao.findDistinctByName(didname);
		for(int    i=0;    i<list.size();    i++)    {   
			did = list.get(i).getDid();
		   } 
		System.out.println(did);
		Landlord landlord = new Landlord(lid, name, gender, realname, "0", "0", did);
		Flag = landlordDao.updateLandlord(landlord);
		if (Flag) {
			return "LandlordInfo.jsp";
		}
		else
			return "register.jsp";	
	}


}
