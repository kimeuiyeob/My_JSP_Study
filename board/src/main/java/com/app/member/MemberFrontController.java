package com.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Results;

//FrontController는 응답요청을 받는곳이라 HTtpservlet을 상속받는다.
//HttpServlet 상속받으면 doGet doPost 메서드를 재정의 할수 있다.
public class MemberFrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	// doProcess 메서드만 사용하면 doGet, doPost를 똑같은 방식으로 사용한다.
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String request = requestURI.substring(contextPath.length());
		Results result = null;

		if (request.equals("/member/joinOk.me")) { 
			try {
				result = new JoinOkController().execute(req, resp);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	}
}
