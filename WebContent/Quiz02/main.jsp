<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>main</title>
</head>
<body>main.jsp<br>
	<script type="text/javascript">
		alert('<%= (String)session.getAttribute("loginUser") %>' + "�� �ݰ����ϴ�.");
	</script>
	<%
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@192.168.0.94:1521:xe";
		String id = "jsp", pwd = "1234";
		String sql = "select * from members";
		
		Connection con = DriverManager.getConnection(url,id,pwd);
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
	%>
	<table border="1">
		<tr>	
			<th>���̵�</th><th>��й�ȣ</th><th>�̸�</th><th>�ּ�</th><th>��ȭ��ȣ</th>
		</tr>
			<%while(rs.next()){%>
				<tr>
					<td><%=rs.getString("id") %></td>
					<td><%=rs.getString("pwd")%></td>
					<td><%=rs.getString("name") %></td>
					<td><%=rs.getString("addr") %></td>
					<td><%=rs.getString("tel") %></td>
				</tr>
				<br>
			<%}%>
	</table>
	<input type="button" value="�α׾ƿ�" onclick="location.href='logout.jsp';">
</body>
</html>