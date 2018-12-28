package cn.bean;

public class Admin {
	public String aid;
	public String password;
	public Admin() {
		super();
	}
	public Admin(String aid, String password) {
		super();
		this.aid = aid;
		this.password = password;
	}
	public String getaid() {
		return aid;
	}
	public void setaid(String aid) {
		this.aid = aid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
