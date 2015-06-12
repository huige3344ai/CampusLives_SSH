package com.zhbit.domain;

import java.util.Date;
import java.util.Set;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	// Fields

	private Integer id;
	private Role role;
	private String userName;
	private String password;
	private String sex;
	private String imgsrc;
	private Date birthday;
	private Short age;
	private String email;
	private Set notes;
	private Set follownotes;

	// Constructors

	/** default constructor */
	public User() {
	}

	/** minimal constructor */
	public User(String userName, String password, String sex, Date birthday,
			Short age, String email) {
		this.userName = userName;
		this.password = password;
		this.sex = sex;
		this.birthday = birthday;
		this.age = age;
		this.email = email;
	}

	/** full constructor */
	public User(Role role, String userName, String password, String sex,
			Date birthday, Short age, String email) {
		this.role = role;
		this.userName = userName;
		this.password = password;
		this.sex = sex;
		this.birthday = birthday;
		this.age = age;
		this.email = email;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Role getRole() {
		return this.role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Date getBirthday() {
		return this.birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public Short getAge() {
		return this.age;
	}

	public void setAge(Short age) {
		this.age = age;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Set getNotes() {
		return notes;
	}

	public void setNotes(Set notes) {
		this.notes = notes;
	}

	public Set getFollownotes() {
		return follownotes;
	}

	public void setFollownotes(Set follownotes) {
		this.follownotes = follownotes;
	}

	public String getImgsrc() {
		return imgsrc;
	}

	public void setImgsrc(String imgsrc) {
		this.imgsrc = imgsrc;
	}





}