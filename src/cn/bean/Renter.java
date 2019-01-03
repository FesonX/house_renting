package cn.bean;

public class Renter {
	private String rid;					//�û�ID
	private String name;					//�ǳ�
	private String gender;				//�Ա�
	private String realname;				//����
	private String Avatar;				//ͷ��
	private String qq;					//QQ��
	private String Wechat;				//΢�ź�
	private String password;				//����
	public String getRid() {
		return rid;
	}
	public void setRid(String rid) {
		this.rid = rid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getAvatar() {
		return Avatar;
	}
	public void setAvatar(String avatar) {
		Avatar = avatar;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public String getWechat() {
		return Wechat;
	}
	public void setWechat(String wechat) {
		this.Wechat = wechat;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Renter [rid=" + rid + ", name=" + name + ", gender=" + gender + ", realname=" + realname + ", Avatar="
				+ Avatar + ", qq=" + qq + ", wechat=" + Wechat + ", password=" + password + "]";
	}
	public Renter(String rid, String name, String gender, String realname, String avatar, String qq, String wechat,
			String password) {
		super();
		this.rid = rid;
		this.name = name;
		this.gender = gender;
		this.realname = realname;
		Avatar = avatar;
		this.qq = qq;
		this.Wechat = wechat;
		this.password = password;
	}
	public Renter() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
}
