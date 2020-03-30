<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>check</title>
</head>
<body>check.jsp<br>
	<%
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@192.168.0.94:1521:xe";
		String id = "jsp", pwd = "1234";
		String sql = "select * from members where id='"+request.getParameter("id") + "'";
	
		Connection con = DriverManager.getConnection(url,id,pwd);
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		
		if(!rs.next()){%>
			<script type="text/javascript">
				alert("아이디가 일치하지 않습니다.");
				location.href = "login.jsp";
			</script>
		<%}else{
			if(!rs.getString("pwd").equals(request.getParameter("pwd"))){%>
			<script type="text/javascript">
				alert("비밀번호가 일치하지 않습니다.");
				location.href = "login.jsp";
			</script>
			<%}else{
				session.setAttribute("loginUser", rs.getString("name"));
				response.sendRedirect("main.jsp");
			}
		}%>
		
</body>
</html>