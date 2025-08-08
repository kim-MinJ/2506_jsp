<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BuyServlet</title>
</head>
<body>
<h2>BuyServlet 애트리뷰트 테스트</h2>
<hr>
<p>name 애트리뷰트 : <%= request.getAttribute("name") %></p>
<p>age 애트리뷰트 : <%= request.getAttribute("age") %></p>
<p>list 애트리뷰트 : <%= request.getAttribute("list") %></p>


<!-- jsp 에서는 반복, 조건 사용이 가능합니다. -->
<ul>
<%
for(Integer o : (List<Integer>)request.getAttribute("list")) {
%>
<!-- 서버 아예 껏다가 다시 시작하면 오류 사라질 때 있음 -->

<li><%= o %></li>
<%
} //for end
%>
</ul>
<!-- 위의 방식은 협업이 어렵고 비효율적입니다. jstl 라이브러리는 반복, 조건 등을 태그로 사용할 수 있도록 지원이 됩니다. -->


</body>
</html>