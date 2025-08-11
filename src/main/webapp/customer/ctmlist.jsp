<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
    <%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TblCustomer 고객</title>
</head>
<body>
<h3>키워드 검색</h3>
<div>
<form action="Customers" method="post">
<input name="customer_Id" placeholder="고객 검색어 입력하세요."
value="${param.customer_Id }">
<button type="submit">검색</button>
</form>
</div>
<div>
<button onclick="location.href='Customers'">전체 목록</button>
<c:if test="${not empty param.customer_Id }">
검색 카테고리 : ${param.customer_Id }
</c:if>
</div>
<hr>
<table>
<tr>
<th>번호</th>
<th>고객번호</th>
<th>이름</th>
<th>이메일</th>
<th>나이</th>
<th>등록날짜</th>
</tr>
<tr>
<td>${status.count}</td>
<td>${dto.customer_Id }</td>
<td>${dto.name }</td>
<td>${dto.email }</td>
<td>
<fmt:formatNumber value="${dto.age }" type="number"/>
</td>
<td>
<fmt:formatDate value="${dto.regDate }" type="date"/>
</td>
</tr>
</table>
</body>
</html>