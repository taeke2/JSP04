<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Quiz01</title>
</head>
<body>Quiz01.jsp<br>
	<%
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@192.168.0.94:1521:xe";
		String id = "jsp", pwd = "1234";
		String sql = "select * from student";
		
		Connection con = DriverManager.getConnection(url,id,pwd);
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
	%>
	<table border="1">
		<tr>
			<th>학번</th><th>이름</th><th>국어</th><th>영어</th><th>수학</th>
		</tr>
		<%while(rs.next()){%>
			<tr>
				<td><%=rs.getString("stNum") %></td>
				<td><%=rs.getString("stName") %></td>
				<td><%=rs.getString("stKor") %></td>
				<td><%=rs.getString("stEng") %></td>
				<td><%=rs.getString("stMat") %></td>
			</tr>
				<br>
		<%}%>
	</table>
	
</body>
</html>