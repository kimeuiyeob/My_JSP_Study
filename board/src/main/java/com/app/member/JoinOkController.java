package com.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Execute;
import com.app.Results;

public class JoinOkController implements Execute {

	@Override
	public Results execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Results result = new Results();
		// request.setAttribute("이름","의엽"); <= 값을 가지고갈때는 forward 값을 없애고 가는경우 redirect
		result.setRedirect(true);
		// redirect로 보내면 req안에있는 루트경로가 사라져서 경로에러가 나니까 redirect로 보낼때는 루트경로를 붙여서 보내준다.
		result.setPath(req.getContextPath() + "/member.login.me");
		return result;
	}

}
