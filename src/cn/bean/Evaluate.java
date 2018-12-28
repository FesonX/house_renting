package cn.bean;

public class Evaluate {
	public int eid;					
	public String rid;			
	public int hid;					
	public int star;				
	public String content;			
		
	public Evaluate() {
		super();
	}
	public Evaluate(int eid, String rid, int hid, int star, String content) {
		super();
		this.eid = eid;
		this.rid = rid;
		this.hid = hid;
		this.star = star;
		this.content = content;
		
	}
	public int geteid() {
		return eid;
	}
	public void seteid(int eid) {
		this.eid = eid;
	}
	public String getrid() {
		return rid;
	}
	public void setrid(String rid) {
		this.rid = rid;
	}
	public int getHid() {
		return hid;
	}
	public void setHid(int hid) {
		this.hid = hid;
	}
	
	public int getstar() {
		return star;
	}
	public void setstar(int star) {
		this.star = star;
	}
	public String getcontent() {
		return content;
	}
	public void setcontent(String content) {
		this.content = content;
	}
	
}
