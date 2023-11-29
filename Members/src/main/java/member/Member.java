package member;

import java.io.Serializable;
import java.sql.Timestamp;

public class Member implements Serializable {
	private static final long serialVersionUID = 11;
	
	private int mno;
	private String id;
	private String passwd;
	private String name;
	private String email;
	private String gender;
	private Timestamp joindate;
	
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Timestamp getJoinDate() {
		return joindate;
	}
	public void setJoindate(Timestamp joinDate) {
		this.joindate = joinDate;
	}	
}
