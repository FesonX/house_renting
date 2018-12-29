package cn.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
		lp.add(ho.getLid());
		lp.add(ho.getDid());
		lp.add(ho.getTitle());
		lp.add(ho.getHouseType());
		lp.add(ho.getAddress());
		lp.add(ho.getArea());
		lp.add(ho.getPic());
		lp.add(ho.getStatus());
		lp.add(ho.getPrice());
		lp.add(ho.getIssueDate());
		lp.add(ho.getReviewed());
		
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
		lp.add(ho.getLid());
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

	@Override
	public boolean updateHouseByReview(House house, int reviewed) {
		String sql = "update house set reviewed=? where hid=?";
		List<Object> lp = new ArrayList<Object>();
		lp.add(reviewed);
		lp.add(house.getHid());
		Boolean flag= bd.update(sql, lp);
		return flag;
	} 
	
	@Override
	public boolean updateHouseByLid(House ho, int lid) {
		String sql = "insert into house(lid) value(?) where hid=?";
		List<Object> lp = new ArrayList<Object>();
		lp.add(ho.getLid());
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
				sqlBuffer.append(" and "+propertyname[i]+"="+value[i]);
			}
		}
		PreparedStatement pstmt = conn.prepareStatement(sqlBuffer.toString());
		ResultSet rs = pstmt.executeQuery();

		while(rs.next()){
			House ho = new House();
			ho.setHid(rs.getInt(1));
			ho.setLid(rs.getString(2));
			ho.setDid(rs.getInt(3));
			ho.setTitle(rs.getString(4));
			ho.setHouseType(rs.getString(5));
			ho.setAddress(rs.getString(6));
			ho.setArea(rs.getFloat(7));
			ho.setPic(rs.getString(8));
			ho.setStatus(rs.getInt(9));
			ho.setPrice(rs.getFloat(10));
			ho.setIssueDate(rs.getString(11));
			ho.setReviewed(rs.getInt(12));
			
			list.add(ho);
		}
		return list;
		
	}

	@Override
	public List<House> houseSearchByDistrict(String district) throws SQLException {
		char[] d = district.toCharArray();
		
		//select * from house where did in (select did from district where name LIKE '%name1%' or name LIKE '%name2%')
		List<House> list = new ArrayList<House>();
		Connection conn = bd.getConnection();
		StringBuffer sqlBuffer = new StringBuffer();
		sqlBuffer.append("select * from house where did in (select did from district where pinyin LIKE "+"'%"+district+"%') and status=0 and reviewed=1");
		int len = d.length;
//		for(int i = 0;i < len-1;i++){
//			sqlBuffer.append(" or pinyin LIKE "+"%"+d[i]+"%");
//		}
		PreparedStatement pstmt = conn.prepareStatement(sqlBuffer.toString());
		ResultSet rs = pstmt.executeQuery();

		while(rs.next()){
			House ho = new House();
			ho.setHid(rs.getInt(1));
			ho.setLid(rs.getString(2));
			ho.setDid(rs.getInt(3));
			ho.setTitle(rs.getString(4));
			ho.setHouseType(rs.getString(5));
			ho.setAddress(rs.getString(6));
			ho.setArea(rs.getFloat(7));
			ho.setPic(rs.getString(8));
			ho.setStatus(rs.getInt(9));
			ho.setPrice(rs.getFloat(10));
			ho.setIssueDate(rs.getString(11));
			ho.setReviewed(rs.getInt(12));
			
			list.add(ho);
		}
		return list;
	}
}
