package cn.bean;

public class Evaluate {
	public int eid;						//评价ID
	public String rid;					//租客用户ID
	public int hid;						//房源信息ID
	public int star;					//评分星级
	public String content;				//评价内容
		
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
