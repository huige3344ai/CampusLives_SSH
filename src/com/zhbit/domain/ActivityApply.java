package com.zhbit.domain;

/**
 * ActivityApply entity. @author MyEclipse Persistence Tools
 */

public class ActivityApply implements java.io.Serializable {

	// Fields

	private Short apNo;
	private Short acId;
	private String acName;
	private Integer UId;
	private String UName;
	private String UTel;

	// Constructors

	/** default constructor */
	public ActivityApply() {
	}

	/** minimal constructor */
	public ActivityApply(Short acId, String acName, Integer UId, String UName) {
		this.acId = acId;
		this.acName = acName;
		this.UId = UId;
		this.UName = UName;
	}

	/** full constructor */
	public ActivityApply(Short acId, String acName, Integer UId, String UName,
			String UTel) {
		this.acId = acId;
		this.acName = acName;
		this.UId = UId;
		this.UName = UName;
		this.UTel = UTel;
	}

	// Property accessors

	public Short getApNo() {
		return this.apNo;
	}

	public void setApNo(Short apNo) {
		this.apNo = apNo;
	}

	public Short getAcId() {
		return this.acId;
	}

	public void setAcId(Short acId) {
		this.acId = acId;
	}

	public String getAcName() {
		return this.acName;
	}

	public void setAcName(String acName) {
		this.acName = acName;
	}

	public Integer getUId() {
		return this.UId;
	}

	public void setUId(Integer UId) {
		this.UId = UId;
	}

	public String getUName() {
		return this.UName;
	}

	public void setUName(String UName) {
		this.UName = UName;
	}

	public String getUTel() {
		return this.UTel;
	}

	public void setUTel(String UTel) {
		this.UTel = UTel;
	}

}