package cn.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cn.bean.House;
import cn.dao.HouseDao;
import cn.dbc.BaseDao;

public class HouseDaoImpl implements HouseDao {
	BaseDao bd = new BaseDao();

	@Override
	public boolean doHouse(House ho) {
		String sql="insert into house(hid,lid,did,eid,address,Area,Pic,status,Price,issueDate,reviewed) values(?,?,?,?,?,?,?,?,?,?,?)";
		List<Object> lp=new ArrayList<Object>();
		lp.add(ho.getHid());
		lp.add(ho.getlid());
		lp.add(ho.getdid());
		lp.add(ho.getEid());
		lp.add(ho.getAddress());
		lp.add(ho.getArea());
		lp.add(ho.getPic());
		lp.add(ho.getStatus());
		lp.add(ho.getPrice());
		lp.add(ho.getissueDate());
		lp.add(ho.getreviewed());
		
		boolean flag=bd.update(sql, lp);
		return flag;
	}

	@Override
	public boolean updateHouse(House ho) {
		String sql = "update house set Price=?,Pic=?,status=?,Area=?,address=? where hid=?";
		List<Object> lp = new ArrayList<Object>();
		lp.add(ho.getPrice());
		lp.add(ho.getPic());
		lp.add(ho.getStatus());
		lp.add(ho.getArea());
		lp.add(ho.getAddress());
		lp.add(ho.getlid());
		Boolean flag= bd.update(sql, lp);
		return flag;
	}

	@Override
	public boolean updateHouseByStatus(House ho, int status) {
		String sql = "update house set status=? where hid=?";
		List<Object> lp = new ArrayList<Object>();
		lp.add(ho.getStatus());
		lp.add(ho.getHid());
		Boolean flag= bd.update(sql, lp);
		return flag;
	}

/*
	@Override
	public boolean updateHouseByAuditing(House ho, String auditing) {
		String sql = "update house set auditing=? where hid=?";
		List<Object> lp = new ArrayList<Object>();
		lp.add(ho.getAuditing());
		lp.add(ho.getHid());
		Boolean flag= bd.update(sql, lp);
		return flag;
	}
*/
	@Override
	public boolean updateHouseByLid(House ho, int lid) {
		String sql = "insert into house(lid) value(?) where hid=?";
		List<Object> lp = new ArrayList<Object>();
		lp.add(ho.getlid());
		lp.add(ho.getHid());
		Boolean flag= bd.update(sql, lp);
		return flag;
	}
	
	public List<House> housesearch(String[] propertyname,Object[] value) throws Exception{
		List<House> list = new ArrayList<House>();
		Connection conn = bd.getConnection();
		StringBuffer sqlBuffer = new StringBuffer();
		sqlBuffer.append("select * from house where 1=1");
		int len = propertyname.length;
		for(int i = 0;i < len;i++){
			if(propertyname[i] != null && value != null){
				sqlBuffer.append("and"+propertyname[i]+"="+value[i]);
			}
		}
		PreparedStatement pstmt = conn.prepareStatement(sqlBuffer.toString());
		ResultSet rs = pstmt.executeQuery();

		while(rs.next()){
			House ho = new House();
			ho.setHid(rs.getInt(1));
			ho.setlid(rs.getString(2));
			ho.setdid(rs.getInt(3));
			ho.setEid(rs.getInt(4));
			
			ho.setAddress(rs.getString(5));
			ho.setArea(rs.getFloat(6));
			ho.setPic(rs.getString(7));
			ho.setStatus(rs.getInt(8));
			ho.setPrice(rs.getFloat(9));
			ho.setissueDate(rs.getString(10));
			ho.setreviewed(rs.getInt(11));
			
			list.add(ho);
		}
		return list;
		
	} 

}
