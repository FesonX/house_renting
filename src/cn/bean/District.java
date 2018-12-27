package cn.bean;

public class District {
	public int did;					//����ID
	public String name;    			//������
	public int parent_id;			//����ID
	public String pinyin;			//ƴ��
	public String initial;			//�����һ����ĸ
	public String initials;			//����ƴ������ĸ
	public String suffix;			//��������
	public String code;				//��������
	public int order;				//Ĭ���������
	public District() {
		super();
	}
	public int getDid() {
		return did;
	}
	public void setDid(int did) {
		this.did = did;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getParent_id() {
		return parent_id;
	}
	public void setParent_id(int parent_id) {
		this.parent_id = parent_id;
	}
	public String getPinyin() {
		return pinyin;
	}
	public void setPinyin(String pinyin) {
		this.pinyin = pinyin;
	}
	public String getInitial() {
		return initial;
	}
	public void setInitial(String initial) {
		this.initial = initial;
	}
	public String getInitials() {
		return initials;
	}
	public void setInitials(String initials) {
		this.initials = initials;
	}
	public String getSuffix() {
		return suffix;
	}
	public void setSuffix(String suffix) {
		this.suffix = suffix;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public int getOrder() {
		return order;
	}
	public void setOrder(int order) {
		this.order = order;
	}
	public District(int did, String name, int parent_id, String pinyin, String initial, String initials, String suffix,
			String code, int order) {
		super();
		this.did = did;
		this.name = name;
		this.parent_id = parent_id;
		this.pinyin = pinyin;
		this.initial = initial;
		this.initials = initials;
		this.suffix = suffix;
		this.code = code;
		this.order = order;
	}
	@Override
	public String toString() {
		return "District [did=" + did + ", name=" + name + ", parent_id=" + parent_id + ", pinyin=" + pinyin
				+ ", initial=" + initial + ", initials=" + initials + ", suffix=" + suffix + ", code=" + code
				+ ", order=" + order + "]";
	}
	
	
	
}
