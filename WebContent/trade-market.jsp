<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/index.css" />
<title>交易中心-实时行情</title>
</head>

<body>
<div id="headcon">
	<div class="contain">
		<ul>
			<li>HJC/CNY:<em>2156.00</em><i><img src="img/upa.png" /></i></li>
			<li>YDC/CNY:<em class="headcona">2156.00</em><i><img src="img/downa.png" /></i></li>
			<li>LTC/CNY:<em>2156.00</em><i><img src="img/upa.png" /></i></li>
			<li>BCC/CNY:<em class="headcona">2156.00</em><i><img src="img/downa.png" /></i></li>
		</ul>
		<p><strong>${user==null?"未登录":user.username}</strong> ,<button>退出</button></p>
		<div><span>登录</span>|<a href="reg.jsp">注册</a></div>
	</div>
</div>
<div id="nav">
	<div class="contain">
		<p><a href="index.jsp"></a></p>
		<ul>
			<li><a href="index.jsp">首页</a></li>
			<div class="togglea">
				<span class="now"><a href="trade-fiance.jsp">交易中心</a></span>
				<div>
					<i></i>
					<dl>
						<dd><a href="trade.jsp"><img src="img/59550af0cedd6.png" />股票1</a></dd>
						<dd><a href=""><img src="img/59550dacbe557.png" />股票2</a></dd>
						<dd><a href=""><img src="img/596ef78673f84.jpg" />股票3</a></dd>
					</dl>
				</div>
			</div>
			<li><a href="finance.jsp">财务中心</a></li>
			<li><a href="safe.jsp">安全中心</a></li>
			<!-- <li><a href="buy.jsp">认购中心</a></li>
			<li><a href="shop.jsp">云购商城</a></li>
			<li><a href="expand.jsp">推广返佣</a></li> -->
		</ul>
		<div class="navtop">
			<h1><img src="img/money.png" />账户预览</h1>
			<div class="navhead">
				<i></i>
				<div>
					<center>账户总资产：￥<u>0.00</u></center>
					<span><em>可用</em><em>冻结</em></span>
					<dl>
						<dd>
							<strong>人民币</strong>
							<em>12412.00</em>
							<em>0.00</em>
						</dd>
						<dd>
							<strong>股票1</strong>
							<em>64512.000</em>
							<em>0.000</em>
						</dd>
						<dd>
							<strong>股票2</strong>
							<em>12.0000</em>
							<em>0.0000</em>
						</dd>
						<dd>
							<strong>股票3</strong>
							<em>12.0000</em>
							<em>0.0000</em>
						</dd>
						<dd>
							<strong>股票4</strong>
							<em>12.0000</em>
							<em>0.0000</em>
						</dd>
					</dl>
				</div>
			</div>
		</div>
	</div>
</div>
<div id="trade">
	<div class="head">
		<a href="trade.jsp">股票1交易</a>
		<a href="trade-market.jsp" class="tradenow">股票1行情<i></i></a>
		<a href="out.jsp">转入/转出股票1</a>
	</div>
	<div class="tradekx">
		<img src="img/kx2.png" />
	</div>
	<div class="market">
		<div class="marketcon marketa">
			<h1>
				<p>买盘</p>
				<p>价格</p>
				<p>数量</p>
				<p>比例</p>
			</h1>
			<ul>
				<li>
					<p>买 1</p>
					<p>0.070503</p>
					<p>5.23698</p>
					<p><span></span></p>
				</li>
				<li>
					<p>买 2</p>
					<p>0.070503</p>
					<p>5.23698</p>
					<p><span></span></p>
				</li>
				<li>
					<p>买 3</p>
					<p>0.070503</p>
					<p>5.23698</p>
					<p><span></span></p>
				</li>
			</ul>	
		</div>
		<div class="marketcon marketb">
			<h1>
				<p>卖盘</p>
				<p>价格</p>
				<p>数量</p>
				<p>比例</p>
			</h1>
			<ul>
				<li>
					<p>卖 1</p>
					<p>0.070503</p>
					<p>5.23698</p>
					<p><span></span></p>
				</li>
				<li>
					<p>卖 2</p>
					<p>0.070503</p>
					<p>5.23698</p>
					<p><span></span></p>
				</li>
				<li>
					<p>卖 3</p>
					<p>0.070503</p>
					<p>5.23698</p>
					<p><span></span></p>
				</li>
			</ul>	
		</div>
		<div class="marketcon marketc">
			<h1>
				<p>实时成交</p>
				<p>价格</p>
				<p>数量</p>
				<p>金额</p>
			</h1>
			<ul>
				<li>
					<p>16:23:32</p>
					<p>567</p>
					<p>344</p>
					<p>122</p>
				</li>
				<li>
					<p>13:24:42</p>
					<p>0.070503</p>
					<p>5.23698</p>
					<p>654</p>
				</li>
				<li>
					<p>12:54:32</p>
					<p>0.070503</p>
					<p>5.23698</p>
					<p>543</p>
				</li>
			</ul>	
		</div>
	</div>
</div>
<div class="foot">
	<div class="footera">
		<ul>
			<li>
				<p>关于我们</p>
				<a href="about.jsp">公司简介</a>
				<a href="abouta.jsp">免责声明</a>
				<a href="aboutb.jsp">注册协议</a>
				<a href="aboutc.jsp">法律声明</a>
			</li>
			<li>
				<p>帮助中心</p>
				<a href="trade.jsp">交易中心</a>
				<a href="finance.jsp">财务中心</a>
				<a href="buy.jsp">认购中心</a>
				<a href="safe.jsp">安全中心</a>
			</li>
			<li>
				<p>客服中心</p>
				<a>在线问答</a>
				<a href="news.jsp">新闻公告</a>
			</li>
		</ul>
		<div>
			<p>服务热线：<span>233214354345</span></p>
			<i>会员群号：1群：531592661</i>
			<em>工作时间：周一至周日 8:00-23:00</em>
		</div>
	</div>
	<div class="footerb">
		<div>
			<p>CopyRight© 2013-2017 交易中心交易平台 All Rights Reserved   |  版权所有交易中心</p>
			<a href="http://www.cyberpolice.cn/wfjb/"></a>
			<a href="http://www.cecdc.com/"></a>
			<a href="http://www.gov.cn/"></a>
		</div>
	</div>
</div>
<script src="js/jquery.min.js"></script>
<script>
	$(".togglea").mouseenter(function(){
		$(".togglea span").css("background-image","url(img/down2.png)")
		$(".togglea div").show();
	})
	$(".togglea").mouseleave(function(){
		$(".togglea span").css("background-image","url(img/up2.png)")
		$(".togglea div").hide();
	})
	$("#nav .navtop h1").click(function(){
			$("#nav .navhead").toggle()
	})
</script>
</body>
</html>
