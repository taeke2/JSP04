<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>logout</title>
</head>
<body>logout.jsp<br>
	<%
		session.invalidate();
	%>
	<script type="text/javascript">
		alert("�α׾ƿ� �Ǿ����ϴ�!!!");
		location.href="login.jsp";
	</script>

</body>
</html>