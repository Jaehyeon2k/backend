<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <img src="${pageContext.request.contextPath}/assets/img/500.png" alt="500오류이미지"><p>
    <h1>내부 오류가 발생했습니다. 관리자에게 연락해 주세요.</h1>
    <!--
    	상태 코드 500 (런타임 오류)
    	1. NullPointerException - null 참조 접근 할때
    	2. ClassCastException - 형 변환 잘못된 타입 캐스팅
    	3. ArrayIndexOutOfBoundsException - 배열/리스트 인덱스 오류 배열 범위 벗어나서 접근 할 때
    	4. ArithmeticException - 0으로 나누었을 때
    	
    -->
    
</body>
</html>
