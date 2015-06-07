package com.zhbit.domain.food;

/**
 * Restaurant entity. @author MyEclipse Persistence Tools
 */

public class Restaurant implements java.io.Serializable {

	// Fields

	private Integer num;
	private String rname;
	private String images;
	private Float price;

	// Constructors

	/** default constructor */
	public Restaurant() {
	}

	/** minimal constructor */
	public Restaurant(String rname, String images) {
		this.rname = rname;
		this.images = images;
	}

	/** full constructor */
	public Restaurant(String rname,  String images, Float price) {
		this.rname = rname;
		this.images = images;
		this.price = price;
	}

	// Property accessors

	public Integer getNum() {
		return this.num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	public String getRname() {
		return this.rname;
	}

	public void setRname(String rname) {
		this.rname = rname;
	}

	
	public String getImages() {
		return this.images;
	}

	public void setImages(String images) {
		this.images = images;
	}

	public Float getPrice() {
		return this.price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

}