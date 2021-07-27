package com.itwillds.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class TestServlet2 extends HttpServlet{
	
	// http://localhost:8088/JSTL_ELJSP/test2
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("TestServlet2_doget() 호출");
		
		// request 영역에 문자열 배열
		String[] foods = {
			"짜장면", "냉면", "짬뽕", "탕수육", "돼지국밥", "삼겹살", "피자"	
		};
		
		request.setAttribute("foods", foods);
		
		// request 영역에 ArrayList 저장 전달(가변길이 배열)
		// sports
		ArrayList<String> arry = new ArrayList<>();
		arry.add("아이스 하키");
		arry.add("스키 점프");
		arry.add("볼링");
		
		request.setAttribute("arry", arry);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		// 페이지 이동(./el/ArrayTest.jsp)
		
		RequestDispatcher dis = request.getRequestDispatcher("./el/ArrayTest.jsp");
		
		dis.forward(request, response);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
