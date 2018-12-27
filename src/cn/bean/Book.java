package cn.bean;

public class Book {
	public int bid;					//预约ID	
	public String rid;				//租客用户ID
	public String lid;				//房东用户ID
	public int hid;					//房源信息ID
	public int reviewed;			//审核状态
	public String booktime;			//预约时间
	public Book() {
		super();
	}
	public Book(int bid, String rid, String lid, int hid, int reviewed, String booktime) {
		super();
		this.bid = bid;
		this.rid = rid;
		this.lid = lid;
		this.hid = hid;
		this.reviewed = reviewed;
		this.booktime = booktime;
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getrid() {
		return rid;
	}
	public void setrid(String rid) {
		this.rid = rid;
	}
	public String getlid() {
		return lid;
	}
	public void setlid(String lid) {
		this.lid = lid;
	}
	public int getHid() {
		return hid;
	}
	public void setHid(int hid) {
		this.hid = hid;
	}
	public int getReviewed() {
		return reviewed;
	}
	public void setReviewed(int reviewed) {
		this.reviewed = reviewed;
	}
	public String getBooktime() {
		return booktime;
	}
	public void setBooktime(String booktime) {
		this.booktime = booktime;
	}
}
