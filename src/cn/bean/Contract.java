package cn.bean;

import java.util.Date;

public class Contract {
	public int cid;				//合同ID	
	public String rid;			//租客用户ID
	public String lid;			//房东用户ID
	public int hid;				//租房信息ID
	public float duration;		//租赁时间
	public Date signdate;		//签约时间
	public int reviewed;		//审核状态
	public float Price;			//总价
	public Contract() {
		super();
	}
	public Contract(int cid, String rid, String lid, int hid,float duration, Date signdate, int reviewed, float Price) {
		super();
		this.cid = cid;
		this.rid = rid;
		this.lid = lid;
		this.hid = hid;
		this.duration = duration;
		this.signdate = signdate;
		this.reviewed = reviewed;
		this.Price = Price;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
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
	public int gethid() {
		return hid;
	}
	public void sethid(int hid) {
		this.hid = hid;
	}
	public float getDuration() {
		return duration;
	}
	public void setDuration(float duration) {
		this.duration = duration;
	}
	public Date getsigndate() {
		return signdate;
	}
	public void setsigndate(Date signdate) {
		this.signdate = signdate;
	}
	
	public int getreviewed() {
		return reviewed;
	}
	public void setreview(int reviewed) {
		this.reviewed = reviewed;
	}
	public float getPrice() {
		return Price;
	}
	public void setPrice(float Price) {
		this.Price = Price;
	}
}
