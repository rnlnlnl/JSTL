package com.itwillds.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwillds.bean.Person;
import com.itwillds.bean.Phone;
@WebServlet("/test3")
public class TestServlet3 extends HttpServlet{
	// 해당클래스를 서블릿으로 변경
	// get방식으로 페이지 호출시 사용
	// Person 사람의 정보를 전달해서 Beantest.jsp 페이지 에서 출력
		
	// Person 사람 - 이름, 나이, 휴재폰(객체)
	// Phone 휴대폰 - 모델명, 전화번호
	
	
	
	
	@Override
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		
		Phone s21 = new Phone();
		s21.setModel("삼성 s21");
		s21.setTelNum("010-1111-2222");
		
		Person person = new Person();
		person.setName("마동석");
		person.setAge(46);
		person.setPhone(s21);
		
		// 사람의 정보를 저장해서 -> jsp 페이지전달
		request.setAttribute("person", person);
		
		
		RequestDispatcher dis = request.getRequestDispatcher("./el/Beantest.jsp");
		
		dis.forward(request, response);
		
	}
	
	
	
	
	
	
}
