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
<script type="text/javascript">
	function changeImage(img) {
		img.src = img.src + "?" + new Date().getTime();
	}
</script>
<body>
<div id="register">
	<div class="cont">
	<div class="head"><img src="img/59ad0e517cecb.png" /></div>
	<form action="LoginAction" method="get">
		<p>${info}</p>
		<p>
			<span>用户名：</span>
			<input type="text"  name="username" value="${input_name}" placeholder="请输入用户名">
		</p>
		<p>
			<span>密码：</span>
			<input type="password" name="password" placeholder="请输入密码">
		</p>
		<p>
			<span>验证码:</span>
			<img src="/180110910715/Response01" onclick="changeImage(this)"> 
			<input type="text" name="code" placeholder="请输入验证码" value="" style="width: 100px;">
		</p>
		<button type="submit">登录</button>
	</form>
		<h2>
			没有账号？
			<a href="reg.jsp">注册一个</a>
		</h2>

	</div>
</div>
	
</body>
</html>