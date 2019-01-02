package cn.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.dao.HouseDao;
import cn.dao.impl.HouseDaoImpl;
import cn.framework.Action;
import cn.bean.House;

public class RejectHouseReviewAction implements Action{

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		boolean result = false;
		String msg = "";
		result = rejectHouseReviewAction(request, response);
		if(result==true) {
			msg = "reject";
			request.setAttribute("message", msg);
		}
		else {
			msg = "failure";
			request.setAttribute("message", msg);
		}
		return "houseReview.do";
	}

	public boolean rejectHouseReviewAction(HttpServletRequest request, HttpServletResponse response) {
		HouseDao hd = new HouseDaoImpl();
		String hid = request.getParameter("hid");
		int hid_value = Integer.parseInt(hid);
		String[] propertyname={"hid"};
		Object[] value={hid_value};
		boolean result = false;
		
		try {
			List<House> list = hd.housesearch(propertyname, value);
			result = hd.updateHouseByReview(list.get(0), 2);
			request.setAttribute("hid", hid);
		}catch (Exception e) {e.printStackTrace();}	
		return result;
	}
}
