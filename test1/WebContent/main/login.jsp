<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>LOGIN</title>
<%-- ������ڽ� --%>
<link rel="stylesheet" href="../member/shadow/css/shadowbox.css">
<script type="text/javascript" src="../member/shadow/js/shadowbox.js"></script>
<style type="text/css">
	.loginrow{	
		margin: 0px auto;
		width: 400px;
	}
	a:link {
		text-decoration:none;
	}
	.login_btn{
		background-color: rgb(162,0,0);
		color: white;
		width: 150px;
		height: 50px;
	}
	.login_div{
		height: 70px;
	}
	.login_input{
		height: 70px; 
		padding-left: 20px;
		padding-right: 20px;
		font-size: medium;
	}
</style>
<script type="text/javascript">
Shadowbox.init({
	players:["iframe"]
});
function id_open(){
	Shadowbox.open({
		content:'../member/idFind.jsp',
		player:'iframe',
		title:'���̵� ã��',
		width:380,
		height:300
	});
};
function pwd_open(){
	Shadowbox.open({
		content:'../member/pwdFind.jsp',
		player:'iframe',
		title:'��й�ȣ ã��',
		width:380,
		height:300
	});
};
</script>
</head>
<body>
	<div class="">
		<div class="row loginrow">
			<div style="height: 50px"></div>
			<h1 class="text-center">�α���</h1>
			<div style="height: 30px"></div>
			<form>
    			<div class="input-group login_div">
      				<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      				<input id="email" type="text" class="form-control login_input" name="email" placeholder="Email" required>
    			</div>
    			<div class="input-group login_div">
     				<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
      				<input id="password" type="password" class="form-control login_input" name="password" placeholder="Password" required>
   				</div>
    			<br>
    			<div class="text-right">
    				<a href="../member/join.jsp">ȸ������</a><br>
    				<a href="javascript:id_open();">���̵� ã��</a> / 
    				<a href="javascript:pwd_open();">��й�ȣ ã��</a>
    			</div>
    			<div class="text-center"><br>
    				<button type="submit" class="btn login_btn">�α���</button>
    			</div>
  			</form>
		</div>
	</div>
	<div style="height: 50px"></div>
</body>
</html>