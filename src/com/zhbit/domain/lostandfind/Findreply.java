package com.zhbit.domain.lostandfind;

/**
 * Findreply entity. @author MyEclipse Persistence Tools
 */
public class Findreply extends AbstractFindreply implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Findreply() {
	}

	/** full constructor */
	public Findreply(Integer findid, String username, String reply) {
		super(findid, username, reply);
	}

}
