package com.zhbit.domain.lostandfind;

/**
 * AbstractLostreply entity provides the base persistence definition of the
 * Lostreply entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractLostreply implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer lostid;
	private String username;
	private String reply;

	// Constructors

	/** default constructor */
	public AbstractLostreply() {
	}

	/** full constructor */
	public AbstractLostreply(Integer lostid, String username, String reply) {
		this.lostid = lostid;
		this.username = username;
		this.reply = reply;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getLostid() {
		return this.lostid;
	}

	public void setLostid(Integer lostid) {
		this.lostid = lostid;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getReply() {
		return this.reply;
	}

	public void setReply(String reply) {
		this.reply = reply;
	}

}