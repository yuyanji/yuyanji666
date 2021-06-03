<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/index.css" />
<title>首页</title>
</head>

<body>
	<div id="index">
		<div class="top">
			<div class="head">
				<div class="nav">
					<ul>
						<li><a href="index.jsp">首页</a></li>
						<div class="togglea">
							<span><a href="trade-fiance.jsp">交易中心</a></span>
							<div>
								<i></i>
								<dl>
									<dd>
										<a href="trade.jsp"><img src="img/59550af0cedd6.png" />股票1</a>
									</dd>
									<dd>
										<a href=""><img src="img/59550dacbe557.png" />股票2</a>
									</dd>
									<dd>
										<a href=""><img src="img/595513e76d790.png" />股票3</a>
									</dd>
									<dd>
										<a href=""><img src="img/596ef78673f84.jpg" />股票4</a>
									</dd>
								</dl>
							</div>
						</div>
						
						<li><a href="finance.jsp">财务中心</a></li>
						<li><a href="safe.jsp">安全中心</a></li>
						<!-- <li><a href="buy.jsp">认购中心</a></li>
					<li><a href="shop.jsp">云购商城</a></li>
					<li><a href="expand.jsp">推广返佣</a></li> -->
					</ul>
				</div>
				<h1>欢迎登陆剑指基金交易中心</h1>
				<div class="login">
					<input type="text" placeholder="请输入用户名" /><input type="text"
						placeholder="请输入密码" />
					<button>登录</button>
					<a href="register.jsp">注册</a>
				</div>
				<div class="login-in">
					<p>
						<a href="login.jsp" style="text-decoration: none">
							${user==null?"未登录":user.username} </a> <a href="reg.jsp"
							style="text-decoration: none"> 注册 </a>
					</p>
					<center>
						<a href="finance.jsp">充值</a> <a href="finance.jsp">提现</a>
					</center>
				</div>
			</div>
		</div>
		

		<div class="count">
			<div class="count-cont">
				<h1>选择交易中心,安全可信赖</h1>
				<h2>
					累计交易额<span>87</span>万
				</h2>
				<div>
					<p>
						<span>0</span> <span>0</span> <span>0</span>
					</p>
					<p>
						<span>0</span> <span>0</span> <span>0</span>
					</p>
					<p>
						<span>8</span> <span>7</span> <span>1</span>
					</p>
					<p>
						<span>6</span> <span>4</span> <span>2</span>
					</p>
				</div>
			</div>
		</div>
		<div class="hint">
			<div>
				<span>风险警告：</span>*******************************************************************************************************************************
			</div>
		</div>
		<div class="pronounce">
			<div class="pronounce-cont">
				<h1>官方公告</h1>
				<div>
					<a href="">
						<h2>*********************************</h2> <img src="img/1bt.png" />
					</a>
				</div>
				<p>
					<span>[17-04-16]</span><a href="">******************************************************
					</a>
				</p>
				<p>
					<span>[17-04-09]</span><a href="">********************************
					</a>
				</p>
				<p>
					<span>[17-03-21]</span><a href="">********************************
					</a>
				</p>
				<p>
					<span>[17-02-18]</span><a href="">********************************
					</a>
				</p>
				<p>
					<span>[17-02-11]</span><a href="">********************************
					</a>
				</p>
				<p>
					<span>[17-01-25]</span><a href="">********************************
					</a>
				</p>
			</div>
			<div class="pronounce-cont">
				<h1>行业资讯</h1>
				<div>
					<a href="">
						<h2>********************************</h2> <img
						src="img/hb_logo.png" />
					</a>
				</div>
				<p>
					<span>[17-06-16]</span><a href="">********************************
					</a>
				</p>
				<p>
					<span>[17-05-09]</span><a href="">********************************
					</a>
				</p>
				<p>
					<span>[17-04-21]</span><a href="">********************************
					</a>
				</p>
				<p>
					<span>[17-03-18]</span><a href="">********************************
					</a>
				</p>
				<p>
					<span>[17-03-11]</span><a href="">********************************
					</a>
				</p>
				<p>
					<span>[17-02-15]</span><a href="">********************************
					</a>
				</p>
			</div>
			<div class="pronounce-cont">
				<h1>常见问题</h1>
				<div>
					<a href="">
						<h2>********************************</h2> <img
						src="img/coindesk.png" />
					</a>
				</div>
				<p>
					<span>[17-03-16]</span><a href="">********************************
					</a>
				</p>
				<p>
					<span>[17-03-09]</span><a href="">********************************
					</a>
				</p>
				<p>
					<span>[17-02-21]</span><a href="">********************************
					</a>
				</p>
				<p>
					<span>[17-02-18]</span><a href="">********************************
					</a>
				</p>
				<p>
					<span>[17-02-11]</span><a href="">********************************
					</a>
				</p>
				<p>
					<span>[17-01-25]</span><a href="">********************************
					</a>
				</p>
			</div>
		</div>
		<div class="foot">
			<div class="footera">
				<h1>
					<img src="img/59ad0e517cecb2.png" />
				</h1>
				<ul>
					<li>
						<p>关于我们</p> <a href="about.jsp">公司简介</a> <a href="abouta.jsp">免责声明</a>
						<a href="aboutb.jsp">注册协议</a> <a href="aboutc.jsp">法律声明</a>
					</li>
					<li>
						<p>帮助中心</p> <a href="trade.jsp">交易中心</a> <a href="finance.jsp">财务中心</a>
						<a href="buy.jsp">认购中心</a> <a href="safe.jsp">安全中心</a>
					</li>
					<li>
						<p>客服中心</p> <a>在线问答</a> <a href="news.jsp">新闻公告</a>
					</li>
				</ul>
				<div>
					<p>
						服务热线：<span>157564564w53</span>
					</p>
					<i>会员群号：1群：531592661</i> <em>工作时间：周一至周日 8:00-23:00</em>
				</div>
			</div>
			<div class="footerb">
				<div>
					<p>CopyRight© 2013-2017 交易中心交易平台 All Rights Reserved | 版权所有交易中心</p>
				</div>
			</div>
		</div>
	</div>
	<div id="floatr">
		<p class="floatr-af">
			<img src="img/1.png" /><i><img src="img/zi1.png" id="myimage" /></i><span>中文</span>
		</p>
		<p>
			<img src="img/2.png" /><span>在线客服</span>
		</p>
		<p>
			<a href="#top"><img src="img/3.png" /><span>返回顶部</span></a>
		</p>
	</div>
	<script src="js/jquery.min.js"></script>
	<script>
 		$(".floatr-af").click(function() {
 			element = document.getElementById("myimage");
 			if (element.src.match("zi2")) {
 				element.src = "img/zi1.png";
 				$(".floatr-af span").text("中文");
 				$(".floatr-af i").css("top", "10px");
 				$(".floatr-af i").css("left", "24.4px");
			} else {
				element.src = "img/zi2.png";
 				$(".floatr-af span").text("English");
 				$(".floatr-af i").css("top", "24px");
 				$(".floatr-af i").css("left", "32.6px");
 			}
		})
	</script>
	<script>
 		$(".togglea").mouseenter(function() {
			$(".togglea span").css("background-image", "url(img/down.png)")
 			$(".togglea div").show();
		})
		$(".togglea").mouseleave(function() {
 			$(".togglea span").css("background-image", "url(img/up.png)")
 			$(".togglea div").hide();
 		})
 	</script> 
</body>
</html>
