<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>BGP Practice #401</h1>
	<h3>로그인-로그아웃 실습 with session</h3>
	<hr>
	<a href="<%= request.getContextPath()%>/method1.jsp">방법1 (스크립틀릿+out)</a>
	<a href="<%= request.getContextPath()%>/method2.jsp">방법2 (스크립틀릿+HTML)</a>
	<hr>
	<h3>세션 정보</h3>
	<h3>주의 : 실무에서는 세션에 비밀번호를 저장하지 않음!!!</h3>
	<hr>
	<%
	java.util.Enumeration<String> names = session.getAttributeNames();
	while (names.hasMoreElements()) {
		String name = names.nextElement();
		Object value = session.getAttribute(name);
		out.println(name + " : " + value + "<br>");
	}
	 %>
	 <form method="post">
	 	<input type="submit" name="removeSessionBtn" value="세션제거">
	 </form>
	<%
		if (request.getParameter("removeSessionBtn") != null) {
			session.invalidate();
			response.sendRedirect(request.getContextPath() + "/index.jsp");
		}
	%>
</body>
</html>