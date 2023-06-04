package com.app;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.xdevapi.Result;

public interface Execute {
	
	public Results execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException;
	
}
