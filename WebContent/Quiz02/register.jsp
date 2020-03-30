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
			document.getElementById("lb").innerHTML = "확인!!";
		} else {
			document.getElementById("lb").innerHTML = "불일치!!";
			document.getElementById("pw1").value = "";
			document.getElementById("pw2").value = "";
			document.getElementById("pw1").focus();
		}
	}
	
	function chkData() {
		if (document.getElementById('id').value == "") {
			alert("아이디는 필수 사항입니다.");
		} else if (document.getElementById('pw1').value == "") {
			alert("비밀번호는 필수 사항입니다.");
		} else if (document.getElementById('pw2').value == "") {
			alert("비밀번호 확인은 필수 사항입니다.");
		} else {
			fo.submit();
		}
	}
</script>
</head>
<body>register.jsp<br>
	<form action="chkRegister.jsp" method="get">
		<input type="text" name="id" placeholder="아이디">(*필수 항목)<br>
		<input type="text" name="pwd" placeholder="비밀번호" id="pw1"><br>
		<input type="text" name="pwdchk" placeholder="비밀번호 확인" id="pw2" onchange="pwchk()"><label id="lb">(*필수 항목)</label><br>
		<input type="text" name="name" placeholder="이름"><br>
		<input type="text" name="addr" placeholder="주소"><br>
		<input type="text" name="tel" placeholder="전화번호"><br>
		<input type="submit" value="회원가입">
	</form>
</body>
</html>