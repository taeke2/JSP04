<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@192.168.0.94:1521:xe";
		String id = "jsp", pwd = "1234";
		String sql = "select * from student where stNum='" + request.getParameter("stNum") + "'";
		
		Connection con = DriverManager.getConnection(url,id,pwd);
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
	%>
	
	<%while(rs.next()){%>
		<h1>���� ����</h1>
		<h3>�й� :<%=rs.getString("stNum") %> </h3>
		<h3>�̸� :<%=rs.getString("stName") %> </h3>
		<h3>��,��,�� : <%=rs.getString("stKor") %>,<%=rs.getString("stEng") %>,<%=rs.getString("stMat") %></h3>
	<%}%>
	
	
	<input type="button" onclick="history.back()" value="����">
</body>
</html>