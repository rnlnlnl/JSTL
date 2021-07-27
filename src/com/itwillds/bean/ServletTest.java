package com.itwillds.bean;

import java.io.IOException;
import java.util.List;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/test1.do")
public class ServletTest extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet() 호출");
		
		// request 영역에 데이터 저장
		request.setAttribute("name", "컴퓨터");
		
		// request 영역에 객체 데이터 저장
		// MemberBean 객체의 정보를 생성하고 -> set2.jsp 출력
		MemberBean mbean = new MemberBean();
		mbean.setId("admin");
		mbean.setPw("1234");
		mbean.setName("홍길동");
		mbean.setAge(20);

		// request 영역에 저장
		request.setAttribute("mbean", mbean);
//		request.setAttribute("id", mbean.getId());
//		request.setAttribute("pw", mbean.getPw());
//		request.setAttribute("name", mbean.getName());
//		request.setAttribute("age", mbean.getAge());
		
		MemberBean mbean1 = new MemberBean();
		mbean1.setId("itwill");
		mbean1.setPw("1q2w3e");
		mbean1.setName("김학생");
		mbean1.setAge(20);
		// request 영역에 저장
		request.setAttribute("MemberBean", mbean1);
		
		// 리스트(가변길이 배열)에 위2개의 정보를 모두 저장해서 처리
		Vector<MemberBean> v = new Vector<MemberBean>();
		v.add(mbean);
		v.add(mbean1);
		
		// request 영역에 저장
		request.setAttribute("memberList", v);
		
		
		

		
		RequestDispatcher dis = request.getRequestDispatcher("/core/set2.jsp");
		dis.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
	
	
	
	
	
	
	
	
	
}
