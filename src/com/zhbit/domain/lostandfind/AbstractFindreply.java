package com.zhbit.domain.lostandfind;

/**
 * AbstractFindreply entity provides the base persistence definition of the
 * Findreply entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractFindreply implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer findid;
	private String username;
	private String reply;

	// Constructors

	/** default constructor */
	public AbstractFindreply() {
	}

	/** full constructor */
	public AbstractFindreply(Integer findid, String username, String reply) {
		this.findid = findid;
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

	public Integer getFindid() {
		return this.findid;
	}

	public void setFindid(Integer findid) {
		this.findid = findid;
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