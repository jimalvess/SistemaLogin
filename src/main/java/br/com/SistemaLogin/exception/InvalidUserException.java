package br.com.SistemaLogin.exception;

import javax.servlet.ServletException;

// A nova exception servletException vai ser tratada no web.xml:
public class InvalidUserException extends ServletException {
	
	//tem que ser public senão não vai ser vista fora:
	public InvalidUserException(String message){
		super(message);
	}
}
