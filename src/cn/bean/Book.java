package cn.bean;

import java.util.Date;

public class Book {
	public int bid;					//ԤԼID	
	public String rid;				//����û�ID
	public String lid;				//�����û�ID
	public int hid;					//��Դ��ϢID
	public int reviewed;			//���״̬
	public Date booktime;			//ԤԼʱ��
	public Book() {
		super();
	}
	public Book(int bid, String rid, String lid, int hid, int reviewed, Date booktime) {
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
	public Date getBooktime() {
		return booktime;
	}
	public void setBooktime(Date booktime) {
		this.booktime = booktime;
	}
}
