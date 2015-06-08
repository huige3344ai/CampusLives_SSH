package com.zhbit.domain.lostandfind;

/**
 * Lost entity. @author MyEclipse Persistence Tools
 */
public class Lost extends AbstractLost implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Lost() {
	}

	/** full constructor */
	public Lost(String lostname, String lostername, String address, String tel,
			String description, String promulgator) {
		super(lostname, lostername, address, tel, description, promulgator);
	}

}
