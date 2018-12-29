package cn.action;

import java.util.List;
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
public class LandlordModifyAction implements Action{
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		LandlordDao landlordDao = new LandlordDaoImpl();
		DistrictDao districtDao = new DistrictDaoImpl();
		boolean Flag = false;
		String name = request.getParameter("name");
		String realname = request.getParameter("realname");
		String lid = request.getParameter("lid");
		String gender = request.getParameter("gender");
		String didname = request.getParameter("didname");
		int did = 0;
		List<District> list = districtDao.findDistinctByName(didname);
		for(int    i=0;    i<list.size();    i++)    {   
			did = list.get(i).getDid();
		   }
		
		Landlord landlord = new Landlord(lid, name, gender, realname, "0", "0", did);
		Flag = landlordDao.updateLandlord(landlord);
		if (Flag) {
			HttpSession session=request.getSession();
			session.setAttribute("landlord", landlord);
			District district = districtDao.findDistrictByDid(landlord.did);
			session.setAttribute("district", district);
			return "LandlordInfo.jsp";
		}
		else
			return "register.jsp";	
	}


}
