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

import cn.bean.House;
import cn.dao.HouseDao;
import cn.dao.PhotoDao;
import cn.dao.impl.HouseDaoImpl;

/**
 * Servlet implementation class UpdateHouseServlet
 */
@WebServlet("/UpdateHouseServlet")
public class UpdateHouseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateHouseServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 List<String> list=new ArrayList<String>();
         String filename=null;
         HouseDao houseDao = new HouseDaoImpl();
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
 	int hid =Integer.parseInt(request.getParameter("hid"));
 	String address =list.get(0);
 	float Area = Float.parseFloat(list.get(1));
 	float Price = Float.parseFloat(list.get(2));
 	String Pic = finalPhotoName;
 	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// �������ڸ�ʽ
 	String str = df.format(new Date());// new Date()Ϊ��ȡ��ǰϵͳʱ��
 	String[] propertyname={"hid"};
	Object[] value={hid};
 	List<House> list1 = null;
	try {
		list1 = houseDao.housesearch(propertyname, value);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
 	House h1=list1.get(0);
 	House h=new House(hid,h1.getLid(),h1.getDid(),h1.getTitle(),h1.getHouseType(),address,  Area,  Pic,
			h1.getStatus(),  Price,  str,  h1.getReviewed());
 	boolean isFlag = houseDao.updateHouse(h);
 	request.getRequestDispatcher("/LandlordInfo.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
