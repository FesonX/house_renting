package cn.bean;

public class Renter {
	public String rid;					//用户ID
	public String name;					//昵称
	public String gender;				//性别
	public String realname;				//姓名
	public String Avatar;				//头像
	public String qq;					//QQ号
	public String wechat;				//微信号
	public String password;				//密码
	
	
	public Renter() {
		super();
	}
	
	//赋值
	public Renter(String rid, String name, String gender, String realname, String Avatar, String qq, String wechat, String password) {
		super();
		this.rid = rid;
		this.name = name;
		this.gender = gender;
		this.realname = realname;	
		this.Avatar = Avatar;
		this.qq = qq;
		this.wechat = wechat;
		this.password = password;
	}
	
	
	public String getrid() {
		return rid;
	}
	public void setrid(String rid) {
		this.rid = rid;
	}
	public String getname() {
		return name;
	}
	public void setname(String name) {
		this.name = name;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getgender() {
		return gender;
	}
	public void setgender(String gender) {
		this.gender = gender;
	}
	public String getAvatar() {
		return Avatar;
	}
	public void setAvatar(String Avatar) {
		this.Avatar = Avatar;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public String getWechat() {
		return wechat;
	}
	public void setWechat(String wechat) {
		this.wechat = wechat;
	}
}
