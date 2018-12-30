package cn.action;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.bean.House;
import cn.dao.HouseDao;
import cn.dao.impl.HouseDaoImpl;
import cn.framework.Action;

// House Reviewed Action For Administrator
public class HouseReviewAction implements Action{
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
	{
		String result = "";
		result = showAllHouse(request, response);
		return result;
	}
	
	public String showAllHouse(HttpServletRequest request, HttpServletResponse response) {
		HouseDao hd = new HouseDaoImpl();
		int status = 0; // Haven't Rented
		int reviewed = 0; // 0 Haven't Reviewed, 1 Agree, 2 Reject
		String[] propertyname = {"status", "reviewed"};
		Object[] value = {status, reviewed};
		
		try {
			List<House> list = hd.housesearch(propertyname, value);
			request.setAttribute("houseList", list);
		}catch (Exception e) {e.printStackTrace();}
		
		return "houseReview.jsp";
	}

}
