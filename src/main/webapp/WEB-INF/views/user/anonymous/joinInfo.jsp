<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/common.css" />
</head>
<body>
			<h3>회원가입정보</h3>

			<table>
				<tr>
					<td>EMAIL</td>
					<td>
						${user.email}
					</td>
				</tr>
				<tr>
					<td>NICKNAME</td>
					<td>
						${user.nickName}
					</td>
				</tr>
				<tr>
					<td>INTRODUCE</td>
					<td>
						${user.introduce}
					 </td>
				</tr>
			</table>
		
		<hr>
		
		<P>  The time on the server is ${serverTime}. </P>
		
		<a href="/portal">메인 페이지 이동</a>	<br>
		
</body>
</html>