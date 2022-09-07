<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>도서정보</h3>
	<ul>
		<li>${book.bookNo }
		<li>${book.bookName }
		<li>${book.bookCoverimg }
		<li>${book.bookDate }
		<li>${book.bookPrice }
		<li>${book.bookPublisher }
		<li>${book.bookInfo }
	</ul>
</body>
</html>