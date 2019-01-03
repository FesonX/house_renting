package cn.action;

import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.bean.Contract;
import cn.bean.House;
import cn.bean.Landlord;
import cn.dao.ContractDao;
import cn.dao.HouseDao;
import cn.dao.LandlordDao;
import cn.dao.impl.ContractDaoImpl;
import cn.dao.impl.HouseDaoImpl;
import cn.dao.impl.LandlordDaoImpl;
import cn.framework.Action;

public class ContractAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		ContractDao cd = new ContractDaoImpl();
		LandlordDao ld = new LandlordDaoImpl();
		HouseDao hd = new HouseDaoImpl();
		
		String rid=request.getParameter("rid");//13030645753
		String lid=request.getParameter("lid");//15982787174
		String hid=request.getParameter("hid");//38
		String duration=request.getParameter("duration");//90 days
		String price=request.getParameter("price");//6000 yuan
		
		if(duration==null||price==null) {
			List<Landlord> landlordList = ld.findLandlordByLid(lid);
			request.setAttribute("landlord_name",landlordList.get(0).getrealname());
			String [] property = {"hid"};
			Object [] value = {hid};
			try {
				List<House> houseList = hd.housesearch(property,value);
				request.setAttribute("house_area",houseList.get(0).getArea());
				request.setAttribute("house_type",houseList.get(0).getHouseType());
				request.setAttribute("house_price",houseList.get(0).getPrice());
			} catch (Exception e) {e.printStackTrace();}
			
			request.setAttribute("rid", rid);
			request.setAttribute("lid", lid);
			request.setAttribute("hid", hid);
			
			return "contract.jsp";
		}
		
		List<Contract> contractList = cd.findContractByRid(rid);
		for(Contract c:contractList) {
			String lidd = c.getLid();
			int hidd = c.getHid();
			if(Integer.parseInt(hid) == hidd&&lid.equals(lidd)) {
				request.setAttribute("contractList", contractList);
				return "showMyContract.jsp";
			}
		}
		int size = 0;
		try {
			size = cd.countContractSize();
		} catch (SQLException e) {e.printStackTrace();}
		
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = new Date();
		//System.out.println(dateFormat.format(date)); //2016-11-16 12:08:43
		
		Contract c = new Contract(size,rid,lid,Integer.parseInt(hid),Float.parseFloat(duration),dateFormat.format(date),0,Float.parseFloat(price));
		cd.doContract(c);
		contractList.clear();
		contractList = cd.findContractByRid(rid);
		request.setAttribute("contractList", contractList);
		
		return "showMyContract.jsp";
	}

}
