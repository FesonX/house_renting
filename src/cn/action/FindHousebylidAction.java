package cn.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.bean.House;
import cn.dao.HouseDao;
import cn.dao.impl.HouseDaoImpl;
import cn.framework.Action; 

public class FindHousebylidAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		List<House> listHouse = new ArrayList<>();
		HouseDao houseDao = new HouseDaoImpl();
		String lid=request.getParameter("lid");
		String arr1[]= {"lid"};
		String arr2[]={lid};
		try {
			listHouse = houseDao.housesearch(arr1, arr2);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("lh", listHouse);
		request.setAttribute("lid", lid);
		return "HouseManage.jsp";
	}
}
