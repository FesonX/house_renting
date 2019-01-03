package cn.dao;
import java.io.File;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class PhotoDao {
	/**
	    *2018年10月24日下午10:41:33
	    *这个函数的功能是获取前端的数据集合，将文件打包成File以便后续操作
	     */
	    public static List<FileItem> getRequsetFileItems(HttpServletRequest request,ServletContext servletContext){
	        boolean isMultipart=ServletFileUpload.isMultipartContent(request);
	        if(isMultipart) {
	            DiskFileItemFactory factory = new DiskFileItemFactory();
	            String str="javax.servelet.context.tempdir";
	            File repository=(File) servletContext.getAttribute(str);
	            factory.setRepository(repository);
	            ServletFileUpload upload=new ServletFileUpload(factory);
	            try {
	                return upload.parseRequest(request);
	            }catch (FileUploadException e) {
	                // TODO: handle exception
	                return null;
	            }
	        }else {
	            return null;
	        }
	    }
	    /**
	    *2018年10月24日下午10:37:59
	    *这个函数的功能是将文件传到预先设置的绝对路径中，也就是项目里的imgs文件夹
	     */
	    public static boolean saveFile(FileItem item,String fileName) {        
	        File savePath=new File("E:\\Javaee_workspace\\House_rent\\WebContent\\imgs");
	        if(!savePath.exists()) {
	            savePath.mkdirs();
	        }
	        File uploadFile=new File(savePath+File.separator+fileName);
	        try{
	            item.write(uploadFile);
	            System.out.println("保存文件成功");
	            return true;
	        }catch(Exception e){
	            System.out.println("保存文件失败");
	        }
	        return false;
	    }
	    /**
	    *2018年10月24日下午8:02:04
	    *这个函数的功能是获取当前时间点与1970年的间隔秒数
	     */
	    public static int getSecondTimestamp(Date date){
	        if (null == date) {
	            return 0;
	        }
	        String timestamp = String.valueOf(date.getTime());
	        System.out.println(timestamp);
	        int length = timestamp.length();
	        if (length > 3) {
	            return Integer.valueOf(timestamp.substring(0,length-3));
	        } else {
	            return 0;
	        }
	    }
	    
	    /**
	     * 
	    *2018年10月24日下午8:42:05
	          *这个函数的功能是得到新的照片名称
	     */
	     public static String getPhotoNewName() {
	         Date date=new Date();
	         int second=getSecondTimestamp(date);
	         String fileName=String.valueOf(second)+".";
	         return fileName;
	    }
	     
	     /**
	     *2018年10月24日下午8:48:58
	              *这个函数的功能是判断文件后缀是否是jpg格式
	      */
	     public static String isGif(FileItem item) {
	        String fileFullName=item.getName();
	         File fileInfo=new File(fileFullName);
	         String suffix = fileInfo.getName().substring(fileInfo.getName().lastIndexOf(".") + 1);
	         return suffix;        
	     }
}
