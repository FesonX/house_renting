package cn.bean;

public class House {
	public int hid;				
	public String lid;			
	public int did;				
	public String title;			
	public String houseType;
	public String address;			
	public float Area;			
	public String Pic;		
	public int status;				
	public float Price;			
	public String issueDate;			
	public int reviewed;			
	public House() {
		super();
	}
	
	public House(int hid, String lid, int did, String title, String houseType, String address, float area, String pic,
			int status, float price, String issueDate, int reviewed) {
		super();
		this.hid = hid;
		this.lid = lid;
		this.did = did;
		this.title = title;
		this.houseType = houseType;
		this.address = address;
		Area = area;
		Pic = pic;
		this.status = status;
		Price = price;
		this.issueDate = issueDate;
		this.reviewed = reviewed;
	}


	public int getHid() {
		return hid;
	}
	public void setHid(int hid) {
		this.hid = hid;
	}
	public String getLid() {
		return lid;
	}
	public void setLid(String lid) {
		this.lid = lid;
	}
	public int getDid() {
		return did;
	}
	public void setDid(int did) {
		this.did = did;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getHouseType() {
		return houseType;
	}
	public void setHouseType(String houseType) {
		this.houseType = houseType;
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
	public void setArea(float area) {
		Area = area;
	}
	public String getPic() {
		return Pic;
	}
	public void setPic(String pic) {
		Pic = pic;
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
	public void setPrice(float price) {
		Price = price;
	}
	public String getIssueDate() {
		return issueDate;
	}
	public void setIssueDate(String issueDate) {
		this.issueDate = issueDate;
	}
	public int getReviewed() {
		return reviewed;
	}
	public void setReviewed(int reviewed) {
		this.reviewed = reviewed;
	}
}
