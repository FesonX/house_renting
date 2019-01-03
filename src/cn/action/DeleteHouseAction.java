package cn.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import cn.dao.HouseDao;
import cn.dao.impl.HouseDaoImpl;
import cn.framework.Action;

public class DeleteHouseAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("DeleteHouseAction excuted!");
		HouseDao houseDao = new HouseDaoImpl();
		int hid=Integer.parseInt(request.getParameter("hid"));
		boolean isFlag = houseDao.deleteHouseByHid(hid);
		return "LandlordInfo.jsp";
	}
}
