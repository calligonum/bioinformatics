package com.zyj.biology.exception;

public class LoginNotFound extends RuntimeException {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public LoginNotFound(String message) {
		super(message);
	}
}
