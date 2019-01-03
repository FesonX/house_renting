package cn.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;

import cn.bean.District;
import cn.bean.House;
import cn.dao.DistrictDao;
import cn.dao.HouseDao;
import cn.dao.PhotoDao;
import cn.dao.impl.DistrictDaoImpl;
import cn.dao.impl.HouseDaoImpl;

/**
 * Servlet implementation class AddHouseServlet
 */
@WebServlet("/AddHouseServlet")
public class AddHouseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public AddHouseServlet() {
        super();
    }
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
    	 List<String> list=new ArrayList<String>();
         String filename=null;
         HouseDao houseDao = new HouseDaoImpl();
         DistrictDao distinctDao=new DistrictDaoImpl();
         ServletContext servletContext=null;
         servletContext=request.getSession().getServletContext();
         //数据库中存储格式:/webTest/imgs/***.jpg
         //第一步:获取页面上上传的图片资源
         List<FileItem> items=PhotoDao.getRequsetFileItems(request,servletContext);
         boolean isLoadToSQL=false;
         for(FileItem item:items) {
             if(!item.isFormField()){
                 //判断后缀名是否是jpg
            	 filename=PhotoDao.getPhotoNewName()+PhotoDao.isGif(item);
             }else {
                 //获取表单中的非文件值
                 //表单中的空间name值
                 //该name值空间中的value值
                 list.add(item.getString("UTF-8"));               
             }
         }
         //存在数据库里面的照片路径是在项目里的相对路径
         String finalPhotoName= request.getContextPath()+"/imgs/"+filename;
         int hashCodeV = UUID.randomUUID().toString().hashCode();
         if(hashCodeV < 0) {//有可能是负数
             hashCodeV = -hashCodeV;
         }
 	int hid =hashCodeV;

 	String lid =request.getParameter("lid");
 	String address =list.get(2);
 	int did=distinctDao.findDid(list.get(0));
 	String title = list.get(1);
 	float Area = Float.parseFloat(list.get(3));
 	float Price = Float.parseFloat(list.get(4));
 	String houseType=list.get(5);
 	String Pic = finalPhotoName;
 	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// 设置日期格式
 	String str = df.format(new Date());// new Date()为获取当前系统时间
 	House h=new House(hid,lid,did,title,houseType,address,  Area,  Pic,
			0,  Price,  str,  0);
 	boolean isFlag = houseDao.doHouse(h);
 	request.getRequestDispatcher("/LandlordInfo.jsp").forward(request,response);
    }

protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
    doGet(request, response);
}

}
