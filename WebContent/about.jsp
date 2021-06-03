<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/index.css" />
<title>关于我们</title>
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
		<div><span>登录</span>|<a href="register.jsp">注册</a></div>
	</div>
</div>
<div id="nav" style="background:url(img/aboutbg.png) no-repeat #BFE5F9;background-size:1200px auto;height:380px">
	<div class="contain">
		<p><a href="index.jsp"></a></p>
		<ul>
			<li><a href="index.jsp" class="now">首页</a></li>
			<div class="togglea">
				<span><a href="trade-fiance.jsp">交易中心</a></span>
				<div>
					<i></i>
					<dl>
						<dd><a href="trade.jsp"><img src="img/59550af0cedd6.png" />汉家币(HJC/CNY)</a></dd>
						<dd><a href=""><img src="img/59550dacbe557.png" />元东币(YDC/CNY)</a></dd>
						<dd><a href=""><img src="img/595513e76d790.png" />莱特币(LTC/CNY)</a></dd>
						<dd><a href=""><img src="img/596ef78673f84.jpg" />bcc(BCC/CNY)</a></dd>
					</dl>
				</div>
			</div>
			<li><a href="finance.jsp">财务中心</a></li>
			<li><a href="safe.jsp">安全中心</a></li>
			<li><a href="buy.jsp">认购中心</a></li>
			<li><a href="shop.jsp">云购商城</a></li>
			<li><a href="expand.jsp">推广返佣</a></li>
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
							<strong>汉家币</strong>
							<em>64512.000</em>
							<em>0.000</em>
						</dd>
						<dd>
							<strong>元东币</strong>
							<em>12.0000</em>
							<em>0.0000</em>
						</dd>
						<dd>
							<strong>莱特币</strong>
							<em>12.0000</em>
							<em>0.0000</em>
						</dd>
						<dd>
							<strong>bcc</strong>
							<em>12.0000</em>
							<em>0.0000</em>
						</dd>
					</dl>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="abouthead">
	<div>
		<a href="about.jsp" class="cur">公司简介</a>	
		<a href="abouta.jsp">免责声明</a>
		<a href="aboutb.jsp">注册协议</a>
		<a href="aboutc.jsp">法律声明</a>
	</div>
</div>
<div class="aboutcont">
	<h1>《公司简介》</h1>
	<p>
		<span>神州交易所于2017年7月创办，2017年8月正式上线。投资的60%用于平台推广和宣传。</span>
		<span>神州交易所是面向中国的虚拟货币交易平台（将来也会开放国际版），我们致力于为您提供安全、快捷、稳定的虚拟货币交易，秉承谷歌“不作恶”的原则，为数字资产爱好者提供一个安全可靠、方便易用以及具有公信力的数字货币交易服务平台。</span>
		<span> 滑稽之家在行业内率先实现了 100% 的数字币和法币的数量均为公开透明的。及时的展示和公布平台的会员数。</span>
		<span>在发展过程中，我们不仅成了一个团队。我们成了对这项事业有着共同热爱的好朋友！我们所有的员工都具备顶尖资质，能够为每一位客户提供最高水平的服务和个性化方案。我们的团队提供7X12小时的服务，因此，让每个客户快乐愉快安全的在平台交易。</span>
	</p>
</div>
<div class="foot">
	<div class="footera">
		<h1><img src="img/59ad0e517cecb2.png" /></h1>
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
