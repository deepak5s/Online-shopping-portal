package com.ezone.Ezonefrontend.exception;

import java.io.Serializable;

public class ProductNotFoundException extends Exception implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String message;
	public ProductNotFoundException(){
		this("PRODUCT IS NOT AVAILABLE");
	}
	public ProductNotFoundException(String message) {
		// TODO Auto-generated constructor stub
		this.message =System.currentTimeMillis() +" :" + message;
		
		
	}
	public String getMessage() {
		return message;
	}
	

}
