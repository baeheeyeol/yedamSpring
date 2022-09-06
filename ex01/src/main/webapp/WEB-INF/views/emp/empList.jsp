<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	table,tr,th,td{
	border :1px solid black}
</style>
<body>
<button type="button" onclick="location.href='insertForm'">등록</button>
	<table>
		<thead>
			<tr>
				<th>employee_id</th>
				<th>first_name</th>
				<th>last_name</th>
				<th>email</th>
				<th>hire_date</th>
				<th>job_id</th>
				<th>salary</th>
				<th>Delete</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var ="emp" items="${empList}">
				<tr onclick="location.href=`getEmp?employeeId=${emp.employeeId}`">
					<td>${emp.employeeId}</td>
					<td>${emp.firstName}</td>
					<td>${emp.lastName}</td>
					<td>${emp.email}</td>
					<td>${emp.hireDate}</td>
					<td>${emp.jobId}</td>
					<td>${emp.salary}</td>
					<td><button type="button" onclick="deleteRow(`${emp.employeeId}`,event)">삭제</button></td>
				</tr>
		</c:forEach>
	</tbody>
	</table>
<script>
	function deleteRow(id, event){
		event.stopPropagation();
		location.href="deleteInfo/"+id;
	}
</script>
</body>
</html>