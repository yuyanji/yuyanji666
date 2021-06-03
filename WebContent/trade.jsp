<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/index.css" />
<title>交易中心</title>
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
		<a href="trade.jsp" class="tradenow">股票1 交易<i></i></a>
		<a href="trade-market.jsp">股票1 行情</a>
		<a href="out.jsp">转入/转出股票1</a>
	</div>
	<div class="tradekx">
		<img src="img/imga.png" />
	</div>
	<div class="tradecon">
		<h2>
			<span>可用股票1：<em>0.0000</em></span>
			<strong>今日行情</strong>
		</h2>
		<div class="tradecon-left">
			<div class="tradecon-lefta tradele">
				<p><i>买入价</i><strong><input type="text" placeholder="此出价为一股的价格"/><u>HJC</u></strong><span>最佳买价：<em>1963.00</em>CNY/HJC</span></p>
				<p><i>买入量</i><strong><input type="text" placeholder="请输入买入数量"/><u>HJC</u></strong><span>最大可买：<em>63.00</em>HJC</span></p>
				<div>
					<span>总价<em>0.00</em></span>
					<span>手续费<em>0.00%</em></span>
				</div>
				<h3><input type="text" placeholder="请输入交易密码"/><i></i></h3>
				<button>买入HJC</button>
			</div>
			<div class="tradecon-leftb tradele">
				<p><i>卖出价</i><strong><input type="text" placeholder="此出价为一股的价格"/><u>HJC</u></strong><span>最佳卖价：<em>1258963.00</em>CNY/HJC</span></p>
				<p><i>卖出量</i><strong><input type="text" placeholder="请输入卖出数量"/><u>HJC</u></strong><span>最大可卖：<em>1258963.00</em>CNY/HJC</span></p>
				<div>
					<span>总价<em>456977.00</em></span>
					<span>手续费<em>0.00%</em></span>
				</div>
				<h3><input type="text" placeholder="请输入交易密码"/><i></i></h3>
				<button>卖出HJC</button>
			</div>
		</div>
		<div class="tradecon-right">
			<h3>
				<em>价格</em>
				<em>数量</em>
				<em>累计</em>
			</h3>
			<ul class="trademb">
				<li>
					<strong>买 5</strong>
					<em>0.017369</em>
					<em>10.1125</em>
					<em>2.3650</em>
				</li>
				<li>
					<strong>买 4</strong>
					<em>0.017369</em>
					<em>10.1125</em>
					<em>2.3650</em>
				</li>
				<li>
					<strong>买 3</strong>
					<em>0.017369</em>
					<em>10.1125</em>
					<em>2.3650</em>
				</li>
				<li>
					<strong>买 2</strong>
					<em>0.017369</em>
					<em>10.1125</em>
					<em>2.3650</em>
				</li>
				<li>
					<strong>买 1</strong>
					<em>0.017369</em>
					<em>10.1125</em>
					<em>2.3650</em>
				</li>
			</ul>
			<ul class="tradema">
				<li>
					<strong>卖 5</strong>
					<em>0.017369</em>
					<em>10.1125</em>
					<em>2.3650</em>
				</li>
				<li>
					<strong>卖 4</strong>
					<em>0.017369</em>
					<em>10.1125</em>
					<em>2.3650</em>
				</li>
				<li>
					<strong>卖 3</strong>
					<em>0.017369</em>
					<em>10.1125</em>
					<em>2.3650</em>
				</li>
				<li>
					<strong>卖 2</strong>
					<em>0.017369</em>
					<em>10.1125</em>
					<em>2.3650</em>
				</li>
				<li>
					<strong>卖 1</strong>
					<em>0.017369</em>
					<em>10.1125</em>
					<em>2.3650</em>
				</li>
			</ul>
		</div>
	</div>
	<div class="tradedeal">
		<h1><span>成交记录</span></h1>
		<div>
			<p>时间</p>
			<p>
				<select>
					<option>买/卖</option>
					<option>买入</option>
					<option>卖出</option>
				</select>
			</p>
			<p>成交价</p>
			<p>成交量</p>
			<p>总额</p>
			<p>手续费</p>
		</div>
		<ul>
			<li class="tradedeal-now">
				<p>07-19 16:25:30</p>
				<p>卖</p>
				<p>100</p>
				<p>2</p>
				<p>2000</p>
				<p>10</p>
			</li>
			<li>
				<p>07-19 16:25:30</p>
				<p>买</p>
				<p>100</p>
				<p>2</p>
				<p>2000</p>
				<p>100</p>
			</li>
			<li class="tradedeal-now">
				<p>07-19 16:25:30</p>
				<p>卖</p>
				<p>100</p>
				<p>2</p>
				<p>2000</p>
				<p>10</p>
			</li>
		</ul>
		<h3 style="display:none"><center>暂无信息</center></h3>
	</div>
	<div class="tradedeal">
		<h1><span>委托管理</span></h1>
		<div>
			<p>时间</p>
			<p>
				<select>
					<option>买/卖</option>
					<option>买入</option>
					<option>卖出</option>
				</select>
			</p>
			<p>委托价格</p>
			<p>委托数量</p>
			<p>已成交量</p>
			<p>
				<select>
					<option>全部</option>
					<option>交易中</option>
					<option>已成交</option>
					<option>已完成</option>
				</select>
			</p>
		</div>
<!--		<ul>
			<li class="tradedeal-now">
				<p>07-19 16:25:30</p>
				<p>卖</p>
				<p>100</p>
				<p>2</p>
				<p>2000</p>
				<p>已成交</p>
			</li>
			<li>
				<p>07-19 16:25:30</p>
				<p>买</p>
				<p>100</p>
				<p>2</p>
				<p>2000</p>
				<p>已完成</p>
			</li>
		</ul>
-->		<h3><center>暂无信息</center></h3>
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
<div class="alertbg"></div>
<div class="trade-alert trade-ab">
	<h1>股票1</h1>
	<div>
		<p>昨日收盘价：<span>123.0000</span></p>
		<p>今日涨幅限制：<span>10%</span></p>
		<p>今日跌幅限制：<span>10%</span></p>
		<p>今日买入最小交易价：<span>0.01</span></p>
		<p>今日卖出最大交易价：<span>10000000</span></p>
		<button>关闭</button>
	</div>
</div>
<div class="trade-alertb trade-ab">
	<h1>交易密码输入设置</h1>
	<div>
		<p><input type="radio" name="pwd"/>每次登录只输入一次交易密码</p>
		<p><input type="radio" name="pwd"/>每笔交易都输入交易密码</p>
		<p><input type="radio" name="pwd"/>每次交易都不需要输入交易密码</p>
		<p><input type="text" placeholder="请输入交易密码" class="trade-pwd"/></p>
		<button>保存</button><a>关闭</a>
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
	//今日行情弹窗
	$(".tradecon h2 strong").click(function(){
		$(".trade-alert").fadeIn(200)
		$(".alertbg").fadeIn(200)
	})
	$(".trade-alert button").click(function(){
		$(".trade-alert").fadeOut(200)
		$(".alertbg").fadeOut(200)
	})
	//交易密码设置弹窗
	$(".tradele h3 i").click(function(){
		$(".trade-alertb").fadeIn(200)
		$(".alertbg").fadeIn(200)
	})
	$(".trade-alertb a").click(function(){
		$(".trade-alertb").fadeOut(200)
		$(".alertbg").fadeOut(200)
	})
</script>
</body>
</html>
