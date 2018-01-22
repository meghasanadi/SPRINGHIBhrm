package com.sam.springmvc.exceptionhandler;

public class ElectricityNotFoundException extends RuntimeException {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public ElectricityNotFoundException(String Villagename) {
		super(Villagename+" Electricity not found");
	}
	
	

}
