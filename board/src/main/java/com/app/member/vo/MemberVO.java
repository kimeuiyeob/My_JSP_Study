package com.app.member.vo;

public class MemberVO {

	private int member_number;
	private String member_id;
	private String member_pw;
	private String member_name;
	private int member_age;
	private String member_gender;
	private String member_email;
	private String member_zipcode;
	private String member_address;
	private String member_address_detail;

	public int getMember_number() {
		return member_number;
	}

	public void setMember_number(int member_number) {
		this.member_number = member_number;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_pw() {
		return member_pw;
	}

	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public int getMember_age() {
		return member_age;
	}

	public void setMember_age(int member_age) {
		this.member_age = member_age;
	}

	public String getMember_gender() {
		return member_gender;
	}

	public void setMember_gender(String member_gender) {
		this.member_gender = member_gender;
	}

	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	public String getMember_zipcode() {
		return member_zipcode;
	}

	public void setMember_zipcode(String member_zipcode) {
		this.member_zipcode = member_zipcode;
	}

	public String getMember_address() {
		return member_address;
	}

	public void setMember_address(String member_address) {
		this.member_address = member_address;
	}

	public String getMember_address_detail() {
		return member_address_detail;
	}

	public void setMember_address_detail(String member_address_detail) {
		this.member_address_detail = member_address_detail;
	}

	@Override
	public String toString() {
		return "MemberVO [member_number=" + member_number + ", member_id=" + member_id + ", member_pw=" + member_pw
				+ ", member_name=" + member_name + ", member_age=" + member_age + ", member_gender=" + member_gender
				+ ", member_email=" + member_email + ", member_zipcode=" + member_zipcode + ", member_address="
				+ member_address + ", member_address_detail=" + member_address_detail + "]";
	}

}
