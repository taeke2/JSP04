<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>register</title>
<script type="text/javascript">
	function pwchk() {
		pw1 = document.getElementById("pw1").value;
		pw2 = document.getElementById("pw2").value;
		if (pw1 == pw2) {
			document.getElementById("lb").innerHTML = "Ȯ��!!";
		} else {
			document.getElementById("lb").innerHTML = "����ġ!!";
			document.getElementById("pw1").value = "";
			document.getElementById("pw2").value = "";
			document.getElementById("pw1").focus();
		}
	}
	
	function chkData() {
		if (document.getElementById('id').value == "") {
			alert("���̵�� �ʼ� �����Դϴ�.");
		} else if (document.getElementById('pw1').value == "") {
			alert("��й�ȣ�� �ʼ� �����Դϴ�.");
		} else if (document.getElementById('pw2').value == "") {
			alert("��й�ȣ Ȯ���� �ʼ� �����Դϴ�.");
		} else {
			fo.submit();
		}
	}
</script>
</head>
<body>register.jsp<br>
	<form action="chkRegister.jsp" method="get">
		<input type="text" name="id" placeholder="���̵�">(*�ʼ� �׸�)<br>
		<input type="text" name="pwd" placeholder="��й�ȣ" id="pw1"><br>
		<input type="text" name="pwdchk" placeholder="��й�ȣ Ȯ��" id="pw2" onchange="pwchk()"><label id="lb">(*�ʼ� �׸�)</label><br>
		<input type="text" name="name" placeholder="�̸�"><br>
		<input type="text" name="addr" placeholder="�ּ�"><br>
		<input type="text" name="tel" placeholder="��ȭ��ȣ"><br>
		<input type="submit" value="ȸ������">
	</form>
</body>
</html>