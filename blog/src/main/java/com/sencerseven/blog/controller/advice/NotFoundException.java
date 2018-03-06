package com.sencerseven.blog.controller.advice;

import java.io.Serializable;

public class NotFoundException extends Exception implements Serializable{

	private static final long serialVersionUID = 1L;
	private String message;
	public NotFoundException() {
		this("This Posts Not Available");
	}
	public NotFoundException(String message) {
		this.message = message;
	}
	public String getMessage() {
		return message;
	}
	
	
}
