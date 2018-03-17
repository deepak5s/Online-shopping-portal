package com.ezone.Ezonefrontend.exception;

import java.io.PrintWriter;
import java.io.StringWriter;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;

@ControllerAdvice
public class GlobalDefaultExceptionHandler {

	
	@ExceptionHandler(NoHandlerFoundException.class)
	public ModelAndView handlerNoHandlerFoundException() {
		
		ModelAndView mv = new ModelAndView("error");
		
		mv.addObject("errorTitle", "Oops Something Went wrong!");
		
       mv.addObject("errorDescription", "The page you are looking for is not available now!");
		
		mv.addObject("title", "404 Error Page");
		
	 return mv;
	
	}

	@ExceptionHandler(ProductNotFoundException.class)
	public ModelAndView handlerProductNotFoundException() {
		
		ModelAndView mv = new ModelAndView("error");
		
		mv.addObject("errorTitle", "Oops Something Went wrong!");
		
       mv.addObject("errorDescription", "!product not available");
		
		mv.addObject("title", "Invalid product");
		
	 return mv;
	
	}
	
	
	@ExceptionHandler(Exception.class)
	public ModelAndView handlerException(Exception ex) {
		
		ModelAndView mv = new ModelAndView("error");
		
		mv.addObject("errorTitle", "CONTACT YOUR ADMNISTRATOR");
		
		/*this code is only for debugging process it is not good in production*/
		
//		StringWriter sw = new StringWriter();
//		PrintWriter pw = new PrintWriter(sw);
//		ex.printStackTrace(pw);
		
		
		
		
		
       mv.addObject("errorDescription", ex.toString() );
		
		mv.addObject("title", "ERROR!!");
		
	 return mv;
	
	}
	
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	
	
}
