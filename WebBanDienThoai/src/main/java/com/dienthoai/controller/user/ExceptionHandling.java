package com.dienthoai.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.NoHandlerFoundException;

@Controller
@ControllerAdvice
public class ExceptionHandling {
	@ExceptionHandler(NoHandlerFoundException.class)
	public String exceptionHandler(Exception exception) {	
		return "exception";
	}
}
