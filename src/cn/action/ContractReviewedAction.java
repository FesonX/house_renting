package cn.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.dao.BookDao;
import cn.dao.ContractDao;
import cn.dao.impl.BookDaoImpl;
import cn.dao.impl.ContractDaoImpl;
import cn.framework.Action;

public class ContractReviewedAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		ContractDao contractDao = new ContractDaoImpl();
		int cid=Integer.parseInt(request.getParameter("cid"));
		contractDao.updateContractReviewed(cid);
		return "LandlordInfo.jsp";
	}
}
