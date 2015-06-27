package com.zhbit.domain.food;

import java.sql.Timestamp;

import com.zhbit.domain.User;

/**
 * Comments entity. @author MyEclipse Persistence Tools
 */

public class Comments implements java.io.Serializable {

	// Fields

	private Integer ckey;
	private Restaurant restaurant;
	private User user;
	private String comment;
	private Float score;
	private Timestamp CDate;

	// Constructors

	/** default constructor */
	public Comments() {
	}

	/** minimal constructor */
	public Comments(Restaurant restaurant, User user, Timestamp CDate) {
		this.restaurant = restaurant;
		this.user = user;
		this.CDate = CDate;
	}

	/** full constructor */
	public Comments(Restaurant restaurant, User user, String comment,
			Float score, Timestamp CDate) {
		this.restaurant = restaurant;
		this.user = user;
		this.comment = comment;
		this.score = score;
		this.CDate = CDate;
	}

	// Property accessors

	public Integer getCkey() {
		return this.ckey;
	}

	public void setCkey(Integer ckey) {
		this.ckey = ckey;
	}

	public Restaurant getRestaurant() {
		return this.restaurant;
	}

	public void setRestaurant(Restaurant restaurant) {
		this.restaurant = restaurant;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getComment() {
		return this.comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public Float getScore() {
		return this.score;
	}

	public void setScore(Float score) {
		this.score = score;
	}

	public Timestamp getCDate() {
		return this.CDate;
	}

	public void setCDate(Timestamp CDate) {
		this.CDate = CDate;
	}

}