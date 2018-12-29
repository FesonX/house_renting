package cn.action;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.bean.Renter;
import cn.dao.RenterDao;
import cn.dao.impl.RenterDaoImpl;

import cn.framework.Action;
public class RenterModifyAction implements Action{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		RenterDao RenterDao = new RenterDaoImpl();
		
		boolean Flag = false;
		String name = request.getParameter("name");
		String realname = request.getParameter("realname");
		String rid = request.getParameter("rid");
		String gender = request.getParameter("gender");
		String qq = request.getParameter("qq");
		String wechat = request.getParameter("Wechat");
		
		
		
		Renter renter = new Renter(rid, name, gender, realname, null, qq, wechat,"0");
		renter = RenterDao.updateRenter(renter);
		if (renter!=null) {
			HttpSession session=request.getSession();
			session.setAttribute("renter", renter);
			return "RenterInfo.jsp";
		}
		else
			return "RenterModify.jsp";	
	}


}
