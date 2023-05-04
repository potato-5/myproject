<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.example.demo.dao.*" %>
<%
 request.setCharacterEncoding("utf-8");

 String id=request.getParameter("memnick");
 System.out.println("nick="+nick);

 MemberDAOImpl md = new MemberDAOImpl();

 int re = md.checkMemberNick(nick);
 // 1이면 중복 -1이면 사용가능 닉네임

 out.println(re);
%>
