package com.zhbit.domain.lostandfind;

/**
 * Lostreply entity. @author MyEclipse Persistence Tools
 */
public class Lostreply extends AbstractLostreply implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Lostreply() {
	}

	/** full constructor */
	public Lostreply(Integer lostid, String username, String reply) {
		super(lostid, username, reply);
	}

}
