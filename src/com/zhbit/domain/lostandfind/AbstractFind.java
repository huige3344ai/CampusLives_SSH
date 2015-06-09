package com.zhbit.domain.lostandfind;

/**
 * AbstractFind entity provides the base persistence definition of the Find
 * entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractFind implements java.io.Serializable {

	// Fields

	private Integer id;
	private String findname;
	private String findername;
	private String address;
	private String tel;
	private String description;
	private String promulgator;

	// Constructors

	/** default constructor */
	public AbstractFind() {
	}

	/** full constructor */
	public AbstractFind(String findname, String findername, String address,
			String tel, String description, String promulgator) {
		this.findname = findname;
		this.findername = findername;
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

	public String getFindname() {
		return this.findname;
	}

	public void setFindname(String findname) {
		this.findname = findname;
	}

	public String getFindername() {
		return this.findername;
	}

	public void setFindername(String findername) {
		this.findername = findername;
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