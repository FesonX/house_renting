package cn.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.bean.House;
import cn.dao.HouseDao;
import cn.dao.impl.HouseDaoImpl;
import cn.framework.Action;

public class QueryAction implements Action {

	
//	GitHub 地址 https://github.com/FesonX/house_renting.git
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String method=request.getParameter("method");
		String result = "";
		
		switch(method) {
			case "showAllHouse":result = showAllHouse(request,response);break;
		}
		return result; 
	} 
	
	public String showAllHouse(HttpServletRequest request, HttpServletResponse response) {
		HouseDao hd=new HouseDaoImpl();
		//String htid=request.getParameter("htid");
		//String tid=request.getParameter("tid");
		//String price=request.getParameter("price");
		//String status=request.getParameter("status");
		//String reviewed=request.getParameter("reviewed");
		int status = 0;
		int reviewed = 1;
		String[] propertyname={"status","reviewed"}; Object[] value={status,reviewed};
		try {
			List<House> list = hd.housesearch(propertyname, value);
			request.setAttribute("houseList", list);
		} catch (Exception e) { e.printStackTrace(); }
		return "showAllHouse.jsp";
	}

}
