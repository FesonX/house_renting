package cn.bean;

public class Book {
	public int bid;					
	public String rid;				
	public String lid;				
	public int hid;					
	public int reviewed;			
	public String booktime;			
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
	public String getRid() {
		return rid;
	}
	public void setRid(String rid) {
		this.rid = rid;
	}
	public String getLid() {
		return lid;
	}
	public void setLid(String lid) {
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
