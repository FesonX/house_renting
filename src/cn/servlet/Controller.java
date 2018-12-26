package cn.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.framework.Action;


public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String reqPath=request.getServletPath();
		reqPath=reqPath.substring(reqPath.lastIndexOf("/")+1,reqPath.length()-3);
	    reqPath=reqPath.substring(0,1).toUpperCase()+reqPath.substring(1);
	    String className="cn.action."+reqPath+"Action";
	    try
		{
			@SuppressWarnings("rawtypes")
			Class clazz=Class.forName(className);
			Action action=(Action)clazz.newInstance();
			String path=action.execute(request, response);
			request.getRequestDispatcher(path).forward(request, response);
		} 
	    catch (Exception e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		this.doGet(request, response);
	}

}
