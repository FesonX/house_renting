package cn.action;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.bean.House;
import cn.dao.HouseDao;
import cn.dao.impl.HouseDaoImpl;
import cn.framework.Action;
import cn.util.Paging;

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
		
		String nowPage=request.getParameter("nowPage");
		if(nowPage==null)
			nowPage = "0";
		
		String type  = request.getParameter("type");
		if(type != null) {
			reviewed = Integer.parseInt(type);
		}
		
		String[] propertyname = {"status", "reviewed"};
		Object[] value = {status, reviewed};
		
		try {
			List<House> list = hd.housesearch(propertyname, value);
			Paging page = new Paging(list,15);
			List<Object>houseList = page.getPaging(Integer.parseInt(nowPage));
			if(page.getPageNum()>50) {
				request.setAttribute("pageNum",30);
			}
			else {
				request.setAttribute("pageNum",page.getPageNum());
			}
			
			request.setAttribute("houseList", houseList);
			request.setAttribute("nowPage",Integer.parseInt(nowPage));
			request.setAttribute("type", type);
		}catch (Exception e) {e.printStackTrace();}
		
		return "houseReview.jsp";
	}

}
