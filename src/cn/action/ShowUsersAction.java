package cn.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.bean.Landlord;
import cn.bean.Renter;
import cn.dao.LandlordDao;
import cn.dao.RenterDao;
import cn.dao.impl.LandlordDaoImpl;
import cn.dao.impl.RenterDaoImpl;
import cn.framework.Action;
import cn.util.Paging;

public class ShowUsersAction implements Action{
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		int type_value = 0; 
		String type  = request.getParameter("type");
		String nowPage=request.getParameter("nowPage");
		if(nowPage==null)
			nowPage = "0";
		String returnPage = "";
		if(type != null) {
			type_value = Integer.parseInt(type);
			if(type_value == 1) {
				RenterDao renterDao = new RenterDaoImpl();
				try {
					List<Renter> list = renterDao.showAllRenters();
					Paging page = new Paging(list,15);
					List<Object>renterList = page.getPaging(Integer.parseInt(nowPage));
					request.setAttribute("users", renterList);
					request.setAttribute("pageNum",page.getPageNum());
					request.setAttribute("nowPage",Integer.parseInt(nowPage));
				}catch(Exception e) {e.printStackTrace();}
				returnPage = "renterManage.jsp";
			}else {
				LandlordDao landlordDao = new LandlordDaoImpl();
				try {
					List<Landlord> list = landlordDao.findLandlord();
					Paging page = new Paging(list,15);
					List<Object>landlordList = page.getPaging(Integer.parseInt(nowPage));
					request.setAttribute("users", landlordList);
					request.setAttribute("pageNum",page.getPageNum());
					request.setAttribute("nowPage",Integer.parseInt(nowPage));
				}catch(Exception e) {e.printStackTrace();}
				returnPage = "landlordManage.jsp";
			}
		}
		else {
			request.setAttribute("msg", "failure");
			returnPage = "renterManage.jsp";
		}
		return returnPage;
	}
}
