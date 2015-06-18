package com.zhbit.domain.point;

/**
 * Point entity. @author MyEclipse Persistence Tools
 */
public class Point extends AbstractPoint implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Point() {
	}

	/** full constructor */
	public Point(String pname, String pinformation, String pimages,
			String pimages2) {
		super(pname, pinformation, pimages, pimages2);
	}

}
