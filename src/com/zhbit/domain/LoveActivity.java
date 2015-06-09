package com.zhbit.domain;

/**
 * LoveActivity entity. @author MyEclipse Persistence Tools
 */

public class LoveActivity implements java.io.Serializable {

	// Fields

	private Short acId;
	private String acName;
	private String acTime;
	private String acPlace;
	private String PName;
	private String PTel;
	private String acContent;

	// Constructors

	/** default constructor */
	public LoveActivity() {
	}

	/** full constructor */
	public LoveActivity(String acName, String acTime, String acPlace,
			String PName, String PTel, String acContent) {
		this.acName = acName;
		this.acTime = acTime;
		this.acPlace = acPlace;
		this.PName = PName;
		this.PTel = PTel;
		this.acContent = acContent;
	}

	// Property accessors

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

	public String getAcTime() {
		return this.acTime;
	}

	public void setAcTime(String acTime) {
		this.acTime = acTime;
	}

	public String getAcPlace() {
		return this.acPlace;
	}

	public void setAcPlace(String acPlace) {
		this.acPlace = acPlace;
	}

	public String getPName() {
		return this.PName;
	}

	public void setPName(String PName) {
		this.PName = PName;
	}

	public String getPTel() {
		return this.PTel;
	}

	public void setPTel(String PTel) {
		this.PTel = PTel;
	}

	public String getAcContent() {
		return this.acContent;
	}

	public void setAcContent(String acContent) {
		this.acContent = acContent;
	}

}