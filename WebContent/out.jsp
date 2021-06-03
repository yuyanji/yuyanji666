<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/index.css" />
<title>交易中心-转入转出</title>
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
				<span><a href="trade-fiance.jsp">交易中心</a></span>
				<div>
					<i></i>
					<dl>
						<dd><a href="trade.jsp"><img src="img/59550af0cedd6.png" />股票1</a></dd>
						<dd><a href=""><img src="img/59550dacbe557.png" />股票2</a></dd>
						<dd><a href=""><img src="img/595513e76d790.png" />股票3</a></dd>
						<dd><a href=""><img src="img/596ef78673f84.jpg" />股票4</a></dd>
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
		<a href="trade-market.jsp">股票1行情</a>
		<a href="out.jsp" class="tradenow">转入/转出股票1<i></i></a>
	</div>
	<div class="out">
		<div class="outa">
			<h2>转出<span>可用股票1：<em>0.00</em></span></h2>
			<p>&nbsp;&nbsp;&nbsp;转出地址：
				<select>
					<option>--选择接收地址--</option>
				</select>
				<a href="safe.jsp">添加地址</a>			
			</p>
			<p>&nbsp;&nbsp;&nbsp;转出数量：
				<input type="text" placeholder="请输入转出数量"/>
				<em>转出手续费0%</em>
			</p>
			<p class="outayz">短信验证码：
				<input type="text" placeholder="验证码" class="log-pass"/>
				<input type="button" id="get_btn" class="log-btn" value="获取验证码" /> 
				<em>156****9201</em>
			</p>
			<p class="outajy">&nbsp;&nbsp;&nbsp;交易密码：
				<input type="text" placeholder="请输入交易密码"/><a href="">忘记密码？</a>
			</p>
			<button>提交</button>
		</div>
		<div class="outb">
			<h2>转入</h2>
			<strong>这是您的钱包地址，请将您的<i>股票</i>转入此地址：</strong>
			<p>1EKzPuYGt1J5BbFntqHraoLaUMT4hVpRSY</p>
			<h3>
				<em>转入说明：</em>
				<span>1. 转入是自动的， 股票 转账需要整个 股票 网络进行确认，达到 2 个确认后您的 股票 会自动充值到您的账户中</span>
				<span>2. 此地址是您唯一且独自使用的转入地址，您可以同时进行多次充值</span>
			</h3>
			<button>补单</button>
		</div>
		<div class="clear"></div>
		<div class="outabg outabb">
			<h1><span>转出记录</span><a>查看转入记录</a></h1>
			<div>
				<p>转出时间</p>
				<p>接收地址</p>
				<p>转出数量</p>
				<p>转出费用</p>
				<p>实际到账</p>
				<p>状态</p>
			</div>
			<ul>
				<li class="tradedeal-now">
					<p>07-19 16:25:30</p>
					<p>1EKzPuYGt1J5BbFntqHraoLaUMT4hVpRSY</p>
					<p>100</p>
					<p>2</p>
					<p>100</p>
					<p class="reda">已到账</p>
				</li>
				<li class="tradedeal-now">
					<p>07-19 16:25:30</p>
					<p>1EKzPuYGt1J5BbFntqHraoLaUMT4hVpRSY</p>
					<p>100</p>
					<p>2</p>
					<p></p>
					<p class="redb">未到账</p>
				</li>
			</ul>
			<h3 style="display:none"><center>暂无信息</center></h3>
		</div>
		<div class="outabg outaba">
			<h1><span>转入记录</span><a>查看转出记录</a></h1>
			<div>
				<p>转入时间</p>
				<p>转入数量</p>
				<p>txID</p>
			</div>
<!--			<ul>
				<li class="tradedeal-now">
					<p>07-19 16:25:30</p>
					<p>100</p>
					<p>1EKzPuYGt1J5BbFntqHraoLaUMT4hVpRSY</p>
				</li>
				<li class="tradedeal-now">
					<p>07-19 16:25:30</p>
					<p>100</p>
					<p>1EKzPuYGt1J5BbFntqHraoLaUMT4hVpRSY</p>
				</li>
			</ul>
-->			<h3><center>暂无信息</center></h3>
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
	$(".outabb h1 a").click(function(){
		$(".outabb").css("display","none");
		$(".outaba").css("display","block");
	})
	$(".outaba h1 a").click(function(){
		$(".outaba").css("display","none");
		$(".outabb").css("display","block");
	})
</script>
<script>
  var wait=60;  
  function time(o) {  
		  if (wait == 0) {  
			  o.removeAttribute("disabled");            
			  o.value="获取验证码";  
			  wait = 60;  
		  } else {  
			  o.setAttribute("disabled", true);  
			  o.value="重新发送(" + wait + ")";  
			  wait--;  
			  setTimeout(function() {  
				  time(o)  
			  },  
			  1000)  
		  }  
	  } 
  document.getElementById("get_btn").onclick=function(){time(this);}  

</script>
</body>
</html>
