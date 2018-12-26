package cn.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.bean.House;
import cn.dao.HouseDao;
import cn.dao.impl.HouseDaoImpl;
import cn.framework.Action;

public class QueryAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HouseDao hd=new HouseDaoImpl();
		String htid=request.getParameter("htid");
		String tid=request.getParameter("tid");
		String price=request.getParameter("price");
		String[] propertyname={"htid","tid","price"};
		Object[] value={htid,tid,price};
		try {
			List<House> list = hd.housesearch(propertyname, value);
			request.setAttribute("list", list);
		} catch (Exception e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		return "query.jsp";
	}

}
