package cn.bean;

public class Landlord {
	public String lid;				
	public String name;				
	public String gender;			
	public String realname;				
	public String Avatar;			
	public String password;			
	public int did;						
	
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
