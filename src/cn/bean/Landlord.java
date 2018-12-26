package cn.bean;

public class Landlord {
	public String lid;					//用户ID
	public String name;					//昵称
	public String gender;				//性别
	public String realname;				//姓名
	public String Avatar;				//头像
	public String password;				//密码
	public int did;						//区域ID
	
	public Landlord() {
		super();
	}
	
	
	public Landlord(String lid, String name, String gender, String realname, String Avatar, String password, int did) {
		super();
		this.lid = lid;
		this.name = name;
		this.gender = gender;
		this.realname = realname;
		this.Avatar = Avatar;
		this.password = password;
		this.did = did;
	}
	
	
	public String getlid() {
		return lid;
	}
	public void setlid(String lid) {
		this.lid = lid;
	}
	
	
	public String getname() {
		return name;
	}
	public void setname(String name) {
		this.name = name;
	}
	
	
	public String getgender() {
		return gender;
	}
	public void setgender(String gender) {
		this.gender = gender;
	}
	
	public String getrealname() {
		return realname;
	}
	public void setrealname(String realname) {
		this.realname = realname;
	}
	
	public String getAvatar() {
		return Avatar;
	}
	public void setAvatar(String Avatar) {
		this.Avatar = Avatar;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public int getdid() {
		return did;
	}
	public void setdid(int did) {
		this.did = did;
	}
}
