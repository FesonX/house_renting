package cn.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.bean.Landlord;
import cn.bean.Renter;
import cn.dao.LandlordDao;
import cn.dao.RenterDao;
import cn.dao.impl.LandlordDaoImpl;
import cn.dao.impl.RenterDaoImpl;
import cn.framework.Action;

public class ShowUsersAction implements Action{
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		int type_value = 0; 
		String type  = request.getParameter("type");
		String page = "";
		if(type != null) {
			type_value = Integer.parseInt(type);
			if(type_value == 1) {
				RenterDao renterDao = new RenterDaoImpl();
				try {
					List<Renter> list = renterDao.showAllRenters();
					request.setAttribute("users", list);
				}catch(Exception e) {e.printStackTrace();}
				page = "renterManage.jsp";
			}else {
				LandlordDao landlordDao = new LandlordDaoImpl();
				try {
					List<Landlord> list = landlordDao.findLandlord();
					System.out.println("Come in");
					request.setAttribute("users", list);
				}catch(Exception e) {e.printStackTrace();}
				page = "landlordManage.jsp";
			}
		}
		else {
			request.setAttribute("msg", "failure");
			page = "renterManage.jsp";
		}
		return page;
	}

}
