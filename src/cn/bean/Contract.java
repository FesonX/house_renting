package cn.bean;


public class Contract {
	public int cid;				//��ͬID	
	public String rid;			//����û�ID
	public String lid;			//�����û�ID
	public int hid;		        //�ⷿ��ϢID
	public float duration;		//����ʱ��
	public String signdate; 	//ǩԼʱ��
	public int reviewed;		//���״̬
	public float price;			//�ܼ�
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
		this.price = Price;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
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
	public float getDuration() {
		return duration;
	}
	public void setDuration(float duration) {
		this.duration = duration;
	}
	public String getSigndate() {
		return signdate;
	}
	public void setSigndate(String signdate) {
		this.signdate = signdate;
	}
	
	public int getReviewed() {
		return reviewed;
	}
	public void setReview(int reviewed) {
		this.reviewed = reviewed;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
}
