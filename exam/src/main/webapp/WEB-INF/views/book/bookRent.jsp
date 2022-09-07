<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>도서별 대여매출 현황</h3>
<table>
<thead>
			<tr>
				<th>도서번호</th>
				<th>도서명</th>
				<th>대여총계</th>
				<th>대여횟수</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="book" items="${rentlist }">
			<tr>
				<td>${book.bookNo }
				<td>${book.bookName }</td>
				<td>${book.rentPrice }</td>
				<td>${book.rentStatus }</td>
			</tr>
		</c:forEach>
		</tbody>
</table>

</body>
</html>