package cn.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.bean.District;
import cn.bean.House;
import cn.bean.Landlord;
import cn.dao.DistrictDao;
import cn.dao.HouseDao;
import cn.dao.LandlordDao;
import cn.dao.impl.DistrictDaoImpl;
import cn.dao.impl.HouseDaoImpl;
import cn.dao.impl.LandlordDaoImpl;
import cn.framework.Action;
import cn.util.Paging;

public class QueryAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String method=request.getParameter("method");
		String result = "";
		
		switch(method) {
			case "showAllHouse":result = showAllHouse(request,response);break;
			case "searchHouseByDid":result = searchHouse(request,response);break;
			case "showOneHouse":result = showOneHouse(request,response);break;
		}
		return result; 
	} 
	
	public String searchHouse(HttpServletRequest request, HttpServletResponse response) {
		DistrictDao dd  = new DistrictDaoImpl();
		String nowPage=request.getParameter("nowPage");
		if(nowPage==null)
			nowPage = "0";
		HouseDao hd=new HouseDaoImpl();
		String district=request.getParameter("district");
		
		try {
			List<House> list = hd.houseSearchByDistrict(district);
			//separate page
			Paging page = new Paging(list,30);
	        List<Object> houseList = page.getPaging(Integer.parseInt(nowPage));
	        List<String> districtList = new ArrayList<>();
	        for(Object h:houseList) {
	        	House house = (House)h;
	        	District d = dd.findDistrictByDid(house.getDid());
	        	districtList.add(d.getName());
	        }
			request.setAttribute("houseList", houseList);
			request.setAttribute("districtList", districtList);
			request.setAttribute("pageNum",page.getPageNum());
			request.setAttribute("nowPage",Integer.parseInt(nowPage));
			request.setAttribute("district",district);
		} catch (Exception e) {e.printStackTrace();}
		
		
		return "showSearchHouse.jsp";
	}

	public String showAllHouse(HttpServletRequest request, HttpServletResponse response) {
		DistrictDao dd  = new DistrictDaoImpl();
		String nowPage=request.getParameter("nowPage");
		if(nowPage==null)
			nowPage = "0";
		HouseDao hd=new HouseDaoImpl();
		int status = 0;
		int reviewed = 1;
		String[] propertyname={"status","reviewed"};
		Object[] value={status,reviewed};
		try {
			List<House> list = hd.housesearch(propertyname, value);
			//separate page
			Paging page = new Paging(list,30);
	        List<Object> houseList = page.getPaging(Integer.parseInt(nowPage));
	        List<String> districtList = new ArrayList<>();
	        for(Object h:houseList) {
	        	House house = (House)h;
	        	District d = dd.findDistrictByDid(house.getDid());
	        	districtList.add(d.getName());
	        }
			request.setAttribute("houseList", houseList);
			request.setAttribute("districtList", districtList);
			request.setAttribute("pageNum",page.getPageNum());
			request.setAttribute("nowPage",Integer.parseInt(nowPage));
		} catch (Exception e) { e.printStackTrace(); }
		
		return "showAllHouse.jsp";
	}

	public String showOneHouse(HttpServletRequest request, HttpServletResponse response) {
		HouseDao hd=new HouseDaoImpl();
		LandlordDao ld=new LandlordDaoImpl();
		DistrictDao dd=new DistrictDaoImpl();
		String hid=request.getParameter("hid");
		int hid_value = Integer.parseInt(hid);
		String[] propertyname={"hid"};
		Object[] value={hid_value};
		
		try {
			List<House> list = hd.housesearch(propertyname, value);
			House h = list.get(0);
			List<Landlord> landLordList= ld.findLandlordByLid(h.getLid());
			List<District> districtList = dd.findDistinctByDid(h.getDid());
			request.setAttribute("houseList", list);
			request.setAttribute("landlord_name",landLordList.get(0).getrealname());
			request.setAttribute("district_name",districtList.get(0).getName());
		} catch (Exception e) { e.printStackTrace(); }
		
		return "showOneHouse.jsp";
	}

}
