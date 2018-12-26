package cn.bean;

public class Admin {
	public int aid;
	public String password;
	public Admin() {
		super();
	}
	public Admin(int aid, String password) {
		super();
		this.aid = aid;
		this.password = password;
	}
	public int getaid() {
		return aid;
	}
	public void setaid(int aid) {
		this.aid = aid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
