package cn.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.bean.District;
import cn.bean.House;
import cn.dao.DistrictDao;
import cn.dao.HouseDao;
import cn.dao.impl.DistrictDaoImpl;
import cn.dao.impl.HouseDaoImpl;
import cn.framework.Action;
import cn.util.Paging; 

public class FindHousebylidAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		List<House> list = new ArrayList<>();
		String nowPage=request.getParameter("nowPage");
		if(nowPage==null)
			nowPage = "0";
		HouseDao hd = new HouseDaoImpl();
		DistrictDao dd  = new DistrictDaoImpl();
		String lid=request.getParameter("lid");
		String arr1[]= {"lid"};
		String arr2[]={lid};
		try {
			list = hd.housesearch(arr1, arr2);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Paging page = new Paging(list,30);
        List<Object> houseList = page.getPaging(Integer.parseInt(nowPage));
		request.setAttribute("houseList", houseList);
		List<String> districtList = new ArrayList<>();
        for(Object h:houseList) {
        	House house = (House)h;
        	District d = dd.findDistrictByDid(house.getDid());
        	districtList.add(d.getName());
        }
        request.setAttribute("districtList", districtList);
        request.setAttribute("pageNum",page.getPageNum());
		request.setAttribute("nowPage",Integer.parseInt(nowPage));
		return "HouseManage.jsp";
	}
}
