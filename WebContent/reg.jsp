<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/index.css" />
<style>
body{background:url(img/56a46b7590f5672af5b8.jpg) no-repeat;background-size:cover}
#register .cont{overflow:hidden;width:520px;text-align:center;margin:40px auto ;position:relative;background:#fff;border-radius:6px;box-shadow:0 0  10px #999;padding:0 0 15px;}
	#register p{width:330px;line-height:40px;margin:10px auto 20px;padding:0 5px;overflow:hidden;}
		#register p:nth-child(7) input{width:100px;margin-right:10px}
		#register p:nth-child(7) strong{display:inline-block;height:35px;margin-top:3px;}
		#register .cont span{display:block;float:left;width:70px;text-align:right;height:25px;margin:0 13px;font-size:14px;}
		#register p input{width: 210px;height:40px;font-size:14px ;line-height:40px;background:#fff;line-height: 46px;float:left;color:#333;border-radius:6px;border:1px solid #aaa;padding:0 10px;}
	#register button{width:290px;color:#fff;height: 50px;border:0;font-size: 20px;border-radius: 50px;margin:10px 0 20px;background:#0165B3}
		#register .cont button:hover{background:#0496e4;}
			#register h2 a{text-decoration:underline;color:#e9e9e9;}
		#register em{}
#register .head{width:100%;overflow:hidden;text-align:center;margin:15px 0 25px}
	#register .head img{width:280px;}
		#register h2{text-align:right;color:##626060;font-size:13px;margin-right:50px}
			#register h2 a{text-decoration:underline;color:#626060;}
			#register h2 a:hover{color:#0099FF}
	#register em{position:absolute;left:0;right:0;margin-left:auto;margin-right:auto;top:70px;color:red;font-size:14px;}

</style>
<title>开户</title>
</head>

<body>
<div id="register">
	<div class="cont">
	<div class="head"><img src="img/59ad0e517cecb.png" /></div>
	<form action="RegAction">
		<p>
			<span>用户名：</span>
			<input type="text" name="username" placeholder="请输入用户名">
		</p>
		<p>
			<span>真实姓名：</span>
			<input type="text" name="name" placeholder="请输入真实姓名">
		</p>
		<p>
			<span>登录密码：</span>
			<input type="password" name="password" placeholder="请输入密码">
		</p>
		<p>
			<span>性别：</span>
			<input type="text" name="sex" placeholder="请再次输入登录密码"/>
		</p>
		<p>
			<span>联系电话：</span>
			<input type="text" name="tel" placeholder="请输入联系电话">
		</p>
		<p>
			<span>年龄:</span>
			<input type="text" name="age"placeholder="请输入年龄">
		</p>
		<button type="submit">注册</button>
	</form>
		<h2>
			已经有账号？
			<a href="login.jsp">返回登录</a>
		</h2>
	</div>
</div>
	<script src="js/gVerify.js"></script>
	<script>
		var verifyCode = new GVerify("v_container");
		
		document.getElementById("my_button").onclick = function(){
			var res = verifyCode.validate(document.getElementById("code_input").value);
			if(res){
				alert("验证正确");
			}else{
				alert("验证码错误");
			}
		};
	</script>
</body>
</html>
