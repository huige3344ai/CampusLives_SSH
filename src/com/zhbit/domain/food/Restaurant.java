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
	private String currency;
	private String style;
	private String servicetime;
	private String character_;
	private String dishes_;
	private Set commentses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Restaurant() {
	}

	/** minimal constructor */
	public Restaurant(User user, String rname, String images, Timestamp RDate,
			String style) {
		this.user = user;
		this.rname = rname;
		this.images = images;
		this.RDate = RDate;
		this.style = style;
	}

	/** full constructor */
	public Restaurant(User user, String rname, String images, Float price,
			Timestamp RDate, String currency, String style, String servicetime,
			String character, String dishes, Set commentses) {
		this.user = user;
		this.rname = rname;
		this.images = images;
		this.price = price;
		this.RDate = RDate;
		this.currency = currency;
		this.style = style;
		this.servicetime = servicetime;
		this.character_ = character;
		this.dishes_ = dishes;
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

	public String getCurrency() {
		return this.currency;
	}

	public void setCurrency(String currency) {
		this.currency = currency;
	}

	public String getStyle() {
		return this.style;
	}

	public void setStyle(String style) {
		this.style = style;
	}

	public String getServicetime() {
		return this.servicetime;
	}

	public void setServicetime(String servicetime) {
		this.servicetime = servicetime;
	}


	public Set getCommentses() {
		return this.commentses;
	}

	public void setCommentses(Set commentses) {
		this.commentses = commentses;
	}

	public String getCharacter_() {
		return character_;
	}

	public void setCharacter_(String character_) {
		this.character_ = character_;
	}

	public String getDishes_() {
		return dishes_;
	}

	public void setDishes_(String dishes_) {
		this.dishes_ = dishes_;
	}

}