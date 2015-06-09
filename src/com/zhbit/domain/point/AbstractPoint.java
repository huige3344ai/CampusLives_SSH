package com.zhbit.domain.point;

/**
 * AbstractPoint entity provides the base persistence definition of the Point
 * entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractPoint implements java.io.Serializable {

	// Fields

	private Integer pid;
	private String pname;
	private String pinformation;
	private String pimages;
	private String pimages2;

	// Constructors

	/** default constructor */
	public AbstractPoint() {
	}

	/** full constructor */
	public AbstractPoint(String pname, String pinformation, String pimages,
			String pimages2) {
		this.pname = pname;
		this.pinformation = pinformation;
		this.pimages = pimages;
		this.pimages2 = pimages2;
	}

	// Property accessors

	public Integer getPid() {
		return this.pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public String getPname() {
		return this.pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPinformation() {
		return this.pinformation;
	}

	public void setPinformation(String pinformation) {
		this.pinformation = pinformation;
	}

	public String getPimages() {
		return this.pimages;
	}

	public void setPimages(String pimages) {
		this.pimages = pimages;
	}

	public String getPimages2() {
		return this.pimages2;
	}

	public void setPimages2(String pimages2) {
		this.pimages2 = pimages2;
	}

}