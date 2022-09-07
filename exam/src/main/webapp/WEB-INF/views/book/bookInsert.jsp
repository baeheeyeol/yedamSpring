<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h4>도서 등록</h4>
<form name="insertForm" action="bookInsert" method="post" onsubmit="return false">
	<div>도서번호<input name="bookNo" readonly value="${no} "></div>	
	<div>도서명<input name="bookName"></div>
	<div>도서표지<input  name="bookCoverimg"></div>
	<div>출판일자<input type="date"name="bookDate"></div>
	<div>금액<input name="bookPrice"></div>
	<div>출판사<input name="bookPublisher"></div>
	<div>도서소개<input name="bookInfo"></div>
	<button type="submit" onclick="formOption()">등록</button>
	<button>조회</button>
</form>

<script>
function formOption(){
	let bookName = document.getElementsByName('bookName')[0];
	if(bookName.value==""){
		alert("도서명이 입력되지 않았습니다.");
		bookName.focus();
		return;
		}
	alert("도서등록이 완료 되었습니다.")
	insertForm.submit();
}
</script>
</html>