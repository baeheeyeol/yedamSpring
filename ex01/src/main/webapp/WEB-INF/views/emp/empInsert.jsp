<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/emp/updateInfo" method="post">
		<div>
			<label>id : <input type="text" name="employeeId" value="${empInfo.employeeId }" readonly></label>
		</div>
		<div>
			<label>first_name : <input type="text" name="firstName" value="${empInfo.firstName }"></label>
		</div>
		<div>
			<label>last_name : <input type="text" name="lastName" value="${empInfo.lastName }"></label>
		</div>
		<div>
			<label>email : <input type="text" name="email" value="${empInfo.email }"></label>
		</div>
		<div>
			<label>hireDate : <input type="text" name="hireDate" value="${empInfo.hireDate }"></label>
		</div>
		<div>
			<label>job_id : <input type="text" name="jobId" value="${empInfo.jobId }"></label>
		</div>
		<div>
			<label>salary : <input type="text" name="salary" value="${empInfo.salary }"></label>
		</div>
		<div>
			<label>phone_number : <input type="text" name="phoneNumber" value="${empInfo.phoneNumber }"></label>
		</div>
		<div>
			<label>commission_pct : <input type="text" name="commissionPct" value="${empInfo.commissionPct }"></label>
		</div>
		<div>
			<label>manager_id : <input type="text" name="managerId" value="${empInfo.managerId }"></label>
		</div>
		<div>
			<label>department_id<input type="text" name="departmentId" value="${empInfo.departmentId }"></label>
		</div>
		<div>
			<button type="submit">수정</button>
			<button type="submit">목록</button>
		</div>
	</form>

</body>
</html>