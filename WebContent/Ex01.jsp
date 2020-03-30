<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Ex01</title>
</head>
<body>Ex01.jsp<br>
	<%
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@192.168.0.94:1521:xe";
		String id = "java", pwd = "1234";
		String sql = "select * from newst";
		
		Connection con = DriverManager.getConnection(url,id,pwd);
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		out.print("id  이름   나이<hr>");
		while(rs.next()){%>
			<%=rs.getString("id") %>
			<%=rs.getString("name") %>
			<%=rs.getInt("age") %>
			<br>
		<%}
	%>
	
</body>
</html>