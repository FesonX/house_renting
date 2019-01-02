package cn.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.dao.LandlordDao;
import cn.dao.RenterDao;
import cn.dao.impl.LandlordDaoImpl;
import cn.dao.impl.RenterDaoImpl;
import cn.framework.Action;

public class UserManagerAction implements Action{


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		int type_value = 0; 
		boolean result = false;
		String id = request.getParameter("id");
		String type  = request.getParameter("type");
		String page = "";
		System.out.println("id"+id);
		if(type != null) {
			type_value = Integer.parseInt(type);
			System.out.println("type"+type);
			if(type_value == 1) {
				RenterDao renterDao = new RenterDaoImpl();
				result = renterDao.delRenter(id);
				request.setAttribute("id", id);
				page = "showUsers.do?type=1";
			}else {
				LandlordDao landlordDao = new LandlordDaoImpl();
				result = landlordDao.deleteLandlord(id);
				request.setAttribute("id", id);
				page = "showUsers.do?type=2";
			}
			if(result) {
				request.setAttribute("msg", "success");
			}
			else{
				request.setAttribute("msg", "failure");
			}
		}
		else {
			request.setAttribute("msg", "failure");
		}
		return page;
	}
	
}
