package com.zhbit.domain.lostandfind;

/**
 * Find entity. @author MyEclipse Persistence Tools
 */
public class Find extends AbstractFind implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Find() {
	}

	/** full constructor */
	public Find(String findname, String findername, String address, String tel,
			String description, String promulgator) {
		super(findname, findername, address, tel, description, promulgator);
	}

}
