package com.zhbit.domain.lostandfind;

/**
 * AbstractLost entity provides the base persistence definition of the Lost
 * entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractLost implements java.io.Serializable {

	// Fields

	private Integer id;
	private String lostname;
	private String lostername;
	private String address;
	private String tel;
	private String description;
	private String promulgator;

	// Constructors

	/** default constructor */
	public AbstractLost() {
	}

	/** full constructor */
	public AbstractLost(String lostname, String lostername, String address,
			String tel, String description, String promulgator) {
		this.lostname = lostname;
		this.lostername = lostername;
		this.address = address;
		this.tel = tel;
		this.description = description;
		this.promulgator = promulgator;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getLostname() {
		return this.lostname;
	}

	public void setLostname(String lostname) {
		this.lostname = lostname;
	}

	public String getLostername() {
		return this.lostername;
	}

	public void setLostername(String lostername) {
		this.lostername = lostername;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPromulgator() {
		return this.promulgator;
	}

	public void setPromulgator(String promulgator) {
		this.promulgator = promulgator;
	}

}