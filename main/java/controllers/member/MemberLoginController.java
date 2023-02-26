package controllers.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import commons.library.UrlLibrary;
import models.member.MemberLoginService;
import models.member.MemberServiceManager;

import static commons.library.MessageLibrary.*;

@WebServlet("/member/login")
public class MemberLoginController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("/member/login.jsp");
		rd.forward(req, resp);
	
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
		MemberServiceManager manager = MemberServiceManager.getInstance();
		MemberLoginService loginservice = manager.getMemberLoginService();
		loginservice.dologin(req,resp);
		
		// 로그인 성공시 -> 메인페이지 (만들면 추가할 예정)
		go(resp,UrlLibrary.getURL(req,null), "parent");
		
		}catch(Exception e) {
			e.printStackTrace();
			
			alertError(resp,e);
		}
		
	
	}
	
	

}
