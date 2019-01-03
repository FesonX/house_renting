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
	    *2018��10��24������10:41:33
	    *��������Ĺ����ǻ�ȡǰ�˵����ݼ��ϣ����ļ������File�Ա��������
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
	    *2018��10��24������10:37:59
	    *��������Ĺ����ǽ��ļ�����Ԥ�����õľ���·���У�Ҳ������Ŀ���imgs�ļ���
	     */
	    public static boolean saveFile(FileItem item,String fileName) {        
	        File savePath=new File("E:\\Javaee_workspace\\House_rent\\WebContent\\imgs");
	        if(!savePath.exists()) {
	            savePath.mkdirs();
	        }
	        File uploadFile=new File(savePath+File.separator+fileName);
	        try{
	            item.write(uploadFile);
	            System.out.println("�����ļ��ɹ�");
	            return true;
	        }catch(Exception e){
	            System.out.println("�����ļ�ʧ��");
	        }
	        return false;
	    }
	    /**
	    *2018��10��24������8:02:04
	    *��������Ĺ����ǻ�ȡ��ǰʱ�����1970��ļ������
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
	    *2018��10��24������8:42:05
	          *��������Ĺ����ǵõ��µ���Ƭ����
	     */
	     public static String getPhotoNewName() {
	         Date date=new Date();
	         int second=getSecondTimestamp(date);
	         String fileName=String.valueOf(second)+".";
	         return fileName;
	    }
	     
	     /**
	     *2018��10��24������8:48:58
	              *��������Ĺ������ж��ļ���׺�Ƿ���jpg��ʽ
	      */
	     public static String isGif(FileItem item) {
	        String fileFullName=item.getName();
	         File fileInfo=new File(fileFullName);
	         String suffix = fileInfo.getName().substring(fileInfo.getName().lastIndexOf(".") + 1);
	         return suffix;        
	     }
}
