package com.zhbit.domain;

/**
 * LoveActivity entity. @author MyEclipse Persistence Tools
 */

public class LoveActivity implements java.io.Serializable {

	// Fields
	
	private Short acId;//活动ID，自增
	private String acNo;//活动代码
	private String acName;//活动名称
	private String acTime;//活动时间
	private String acPlace;//活动地点
	private String PName;//负责人名字
	private String PTel;//负责人电话
	private String acContent;//活动内容

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

	public String getAcNo() {
		return this.acNo;
	}

	public void setAcNo(String acNo) {
		this.acNo = acNo;
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