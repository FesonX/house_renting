package cn.bean;

public class House {
	public int hid;					//房屋ID
	public String lid;				//所属房东
	public int did;					//所属区域
	public int eid;					//相应评价
	public String address;			//具体地址
	public float Area;				//房屋面积
	public String Pic;				//房屋图片
	public int status;				//租售状态
	public float Price;				//房屋价格
	public String issueDate;			//信息发布日期
	public int reviewed;			//审核状态
	public House() {
		super();
	}
	public House(int hid, String lid, int did, int eid, String address, float Area,  String Pic, int status, float Price, String issueDate, int reviewed) {
		super();
		this.hid = hid;
		this.lid = lid;
		this.did = did;
		this.eid = eid;
		this.address = address;
		this.Area = Area;
		this.Pic = Pic;
		this.status = status;
		this.Price = Price;
		this.issueDate = issueDate;
		this.reviewed = reviewed;
		
	}
	public int getHid() {
		return hid;
	}
	public void setHid(int hid) {
		this.hid = hid;
	}
	
	public String getlid() {
		return lid;
	}
	public void setlid(String lid) {
		this.lid = lid;
	}
	
	public int getdid() {
		return did;
	}
	public void setdid(int did) {
		this.did = did;
	}
	
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public float getArea() {
		return Area;
	}
	public void setArea(float Area) {
		this.Area = Area;
	}
	public String getPic() {
		return Pic;
	}
	public void setPic(String Pic) {
		this.Pic = Pic;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public float getPrice() {
		return Price;
	}
	public void setPrice(float Price) {
		this.Price = Price;
	}
	public String getissueDate() {
		return issueDate;
	}
	public void setissueDate(String issueDate) {
		this.issueDate = issueDate;
	}
	public int getreviewed() {
		return reviewed;
	}
	public void setreviewed(int reviewed) {
		this.reviewed = reviewed;
	}
}
