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
         //���ݿ��д洢��ʽ:/webTest/imgs/***.jpg
         //��һ��:��ȡҳ�����ϴ���ͼƬ��Դ
         List<FileItem> items=PhotoDao.getRequsetFileItems(request,servletContext);
         boolean isLoadToSQL=false;
         for(FileItem item:items) {
             if(!item.isFormField()){
                 //�жϺ�׺���Ƿ���jpg
            	 filename=PhotoDao.getPhotoNewName()+PhotoDao.isGif(item);
             }else {
                 //��ȡ���еķ��ļ�ֵ
                 //���еĿռ�nameֵ
                 //��nameֵ�ռ��е�valueֵ
                 list.add(item.getString("UTF-8"));               
             }
         }
         //�������ݿ��������Ƭ·��������Ŀ������·��
         String finalPhotoName= request.getContextPath()+"/imgs/"+filename;
         int hashCodeV = UUID.randomUUID().toString().hashCode();
         if(hashCodeV < 0) {//�п����Ǹ���
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
 	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// �������ڸ�ʽ
 	String str = df.format(new Date());// new Date()Ϊ��ȡ��ǰϵͳʱ��
 	House h=new House(hid,lid,did,title,houseType,address,  Area,  Pic,
			0,  Price,  str,  0);
 	boolean isFlag = houseDao.doHouse(h);
 	request.getRequestDispatcher("/LandlordInfo.jsp").forward(request,response);
    }

protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
    doGet(request, response);
}

}
