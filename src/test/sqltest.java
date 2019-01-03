package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class sqltest {
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
    static final String DB_URL = "jdbc:mysql://localhost:3306/house_rent?useSSL=false";
 
    // 数据库的用户名与密码，需要根据自己的设置
    static final String USER = "root";
    static final String PASS = "root";
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Connection conn=null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(DB_URL,USER,PASS);
			System.out.println("连接数据库成功");
			String sql = "select * from district where name='东莞'"; 
		    
		    PreparedStatement pst = null;
		        // 定义一个list用于接受数据库查询到的内容
		    List<String> list = new ArrayList<String>();
		    pst = conn.prepareStatement(sql);
		    ResultSet rs = pst.executeQuery();
		    while (rs.next()) {
		                // 将查询出的内容添加到list中，其中userName为数据库中的字段名称
		          list.add(rs.getString("did"));
		          System.out.println(list);
		    }

		} 
		catch (Exception e)
		{
			// TODO Auto-generated catch block
			System.out.println("连接数据库失败");
			e.printStackTrace();
		}

	}

}
