package com.zhbit.domain.food;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

import com.zhbit.domain.User;

/**
 * Restaurant entity. @author MyEclipse Persistence Tools
 */


public class Restaurant implements java.io.Serializable {

	// Fields

	private Integer num;
	private User user;
	private String rname;
	private String images;
	private Float price;
	private Timestamp RDate;
	private Set commentses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Restaurant() {
	}

	/** minimal constructor */
	public Restaurant(User user, String rname, String images, Timestamp RDate) {
		this.user = user;
		this.rname = rname;
		this.images = images;
		this.RDate = RDate;
	}

	/** full constructor */
	public Restaurant(User user, String rname, String images, Float price,
			Timestamp RDate, Set commentses) {
		this.user = user;
		this.rname = rname;
		this.images = images;
		this.price = price;
		this.RDate = RDate;
		this.commentses = commentses;
	}

	// Property accessors

	public Integer getNum() {
		return this.num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
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

	public Timestamp getRDate() {
		return this.RDate;
	}

	public void setRDate(Timestamp RDate) {
		this.RDate = RDate;
	}

	public Set getCommentses() {
		return this.commentses;
	}

	public void setCommentses(Set commentses) {
		this.commentses = commentses;
	}

}