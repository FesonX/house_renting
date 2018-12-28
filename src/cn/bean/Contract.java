package cn.bean;


public class Contract {
	public int cid;				
	public String rid;			
	public String lid;			
	public int hid;				
	public float duration;		
	public String signdate;		
	public int reviewed;                                    
	public float Price;			
	public Contract() {
		super();
	}
	public Contract(int cid, String rid, String lid, int hid,float duration, String signdate, int reviewed, float Price) {
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
	public String getsigndate() {
		return signdate;
	}
	public void setsigndate(String signdate) {
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
