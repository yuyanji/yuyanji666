<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/index.css" />
<title>财务中心</title>
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
			<li><a href="finance.jsp" class="now">财务中心</a></li>
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
<div id="finance">
	<div class="financea">
		<h1>人民币（CNY）</h1>
		<p>可用：￥<em>0.00</em></p>
		<p>冻结：￥<em>0.00</em></p>
		<p>总资产：￥<em>50.64</em></p>
		<a href="#outto">提现</a>
		<a href="#outto">充值</a>
	</div>
	<div class="financeb">
		<div>
			<p></p>
			<p>可用余额</p>
			<p>冻结委托</p>
			<p>总计</p>
			<p>折合（￥）</p>
			<p>操作</p>
		</div>
		<ul>
			<li>
				<p><img src="img/59550af0cedd6.png" /><span>股票1<em>¥100</em></span></p>
				<p>0</p>
				<p>0</p>
				<p>0</p>
				<p>0</p>
				<p><a href="">去交易</a></p>
			</li>
			<li>
				<p><img src="img/59550dacbe557.png" /><span>股票2<em>¥100</em></span></p>
				<p>0</p>
				<p>0</p>
				<p>0</p>
				<p>0</p>
				<p><a href="">去交易</a></p>
			</li>
			<li>
				<p><img src="img/595513e76d790.png" /><span>股票3<em>¥100</em></span></p>
				<p>0</p>
				<p>0</p>
				<p>0</p>
				<p>0</p>
				<p><a href="">去交易</a></p>
			</li>
			<li>
				<p><img src="img/596ef78673f84.jpg" /><span>股票4<em>¥100</em></span></p>
				<p>0</p>
				<p>0</p>
				<p>0</p>
				<p>0</p>
				<p><a href="">去交易</a></p>
			</li>
		</ul>
	</div>
	<div class="outto" id="outto">
		<div class="finance-to financec">
			<h2>人民币充值<span><i>*</i>请在汇款［备注/附言］填写<em>订单编号</em></span></h2>
			<p>收款账号：
			<input type="text" readonly value="1234556677788999"  class="financeinput"/>
			</p>
			<p>充值方式：
				<select>
					<option>--选择方式--</option>
					<option>支付宝转账支付</option>
					<option>微信转账支付</option>
				</select>
			</p>
			<p>充值金额：
				<input type="text" placeholder="请输入充值金额"/>	
			</p>
			<button>充值</button>
			<div class="clear"></div>
			<h3>
				<em>充值说明：</em>
				<span>1. 只允许使用本人的支付宝进行转账充值，请确保汇款人姓名与注册一致</span>
				<span>2.请在汇款［备注/附言］中严格按要求填写充值订单编号</span>
				<span>3.不要填写其它字符（比特币、莱特币等），否则不能正确到账！</span>
				<span>4.我们会在收到汇款后20分钟内为您入账，在此期间无需联系客服，如有问题我们会主动联系您。 </span>
			</h3>
		</div>
		<div class="finance-out financec">
			<h2>人民币提现<span style="padding-right:20px;"><i>*</i>提现手续费率<em>1.233%</em></span></h2>
			<p>&nbsp;&nbsp;&nbsp;提现金额：
				<input type="text" placeholder="请输入提现金额"/>
				<em style="display:none"><u>17090400487</u>(仅限支付宝)</em>
				<i>添加支付宝账号</i>
			</p>
			<p class="outayz">短信验证码：
				<input type="text" placeholder="验证码" class="log-pass"/>
				<input type="button" id="get_btn" class="log-btn" value="获取验证码" /> 
				<em>156****9201</em>
			</p>
			<p class="outajy">&nbsp;&nbsp;&nbsp;交易密码：
				<input type="text" placeholder="请输入交易密码"/><a href="">忘记密码？</a>
			</p>
			<button>提现</button>
			<div class="clear"></div>
			<h3>
				<em>充值说明：</em>
				<span>1. 提现手续费率1％，每笔提现最低收费2元 。</span>
				<span>2. 单笔提现限额100元——50000元。</span>
				<span>3. 银行卡提现24小时内到帐，在已汇出24小时后 仍未收到款项，请联系客服。 </span>
			</h3>
		</div>
	</div>
	<div class="tradedeal financedeal">
		<h1><span>充值记录</span><a>查看提现记录</a></h1>
		<div>
			<p>充值时间</p>
			<p>充值订单</p>
			<p>充值方式</p>
			<p>充值金额</p>
			<p>实际到账</p>
			<p>
				<select>
					<option>状态</option>
					<option>未付款</option>
					<option>充值成功</option>
					<option>人工到账</option>
					<option>处理中</option>
				</select>
			</p>
		</div>
		<ul>
			<li class="tradedeal-now">
				<p>2017-07-19 16:25:30</p>
				<p>MB928628</p>
				<p>支付宝</p>
				<p>￥111</p>
				<p>￥111</p>
				<p><span>未付款/<a>已付款</a></span><span style="display:none">处理中</span></p>
			</li>
			<li>
				<p>2017-07-19 16:25:30</p>
				<p>MB928628</p>
				<p>支付宝</p>
				<p>￥111</p>
				<p>￥111</p>
				<p><span style="display:none">未付款/<a>已付款</a></span><span>处理中</span></p>
			</li>
			<li class="tradedeal-now">
				<p>2017-07-19 16:25:30</p>
				<p>MB928628</p>
				<p>支付宝</p>
				<p>￥111</p>
				<p>￥111</p>
				<p><span>未付款/<a>已付款</a></span><span style="display:none">处理中</span></p>
			</li>
		</ul>
		<h3 style="display:none"><center>暂无信息</center></h3>
	</div>
	<div class="tradedeal financedeaf">
		<h1><span>提现记录</span><a>查看充值记录</a></h1>
		<div>
			<p>提现时间</p>
			<p>充值金额</p>
			<p>手续费</p>
			<p>到账金额</p>
			<p>提现地址</p>
			<p>
				<select>
					<option>状态</option>
					<option>已申请</option>
					<option>提现成功</option>
					<option>已撤销</option>
					<option>处理中</option>
				</select>
			</p>
		</div>
		<ul>
			<li class="tradedeal-now">
				<p>2017-07-19 16:25:30</p>
				<p>123</p>
				<p>11</p>
				<p>￥111</p>
				<p>15674567896</p>
				<p>处理中</p>
			</li>
			<li>
				<p>2017-07-19 16:25:30</p>
				<p>123</p>
				<p>11</p>
				<p>￥111</p>
				<p>15674567896</p>
				<p>处理中</p>
			</li>
			<li class="tradedeal-now">
				<p>2017-07-19 16:25:30</p>
				<p>123</p>
				<p>11</p>
				<p>￥111</p>
				<p>15674567896</p>
				<p>处理中</p>
			</li>
		</ul>
		<h3 style="display:none"><center>暂无信息</center></h3>
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
<div class="financebg financeba">
	<h1>人民币充值<span>（未付款/<em>已汇款</em>）</span></h1>
		<h2>请使用支付宝转账至以下账号</h2>
	<div>
		<p>收款账号：<strong>12345565676</strong></p>
		<p>支付金额：<em>1.00</em></p>
		<p>订单编号：<em>HL651446</em></p>
		<button>关闭</button>
	</div>
	<p class="financebga"><i>*</i>请在汇款［备注/附言］中填写订单编号：<em>HL651446</em></p>
</div>
<div class="financebg financebb">
	<h1>添加支付宝</h1>
	<div>
		<p>&nbsp;&nbsp;&nbsp;开户姓名：<strong>123445</strong></p>
		<p>支付宝账号：<input type="text" /></p>
		<p>&nbsp;&nbsp;&nbsp;交易密码：<input type="text" /><a href="">忘记密码？</a></p>
		<button>立即添加</button><center>关闭</center>
	</div>
</div>
<script src="js/jquery.min.js"></script>
<script>
/*导航*/
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
/*充值*/
$(".finance-to button").click(function(){
	$(".financeba").fadeIn()
	$(".alertbg").fadeIn()
})
$(".financeba button").click(function(){
	$(".financeba").fadeOut()
	$(".alertbg").fadeOut()
})
/*添加支付宝*/
$(".financec p i").click(function(){
	$(".financebb").fadeIn()
	$(".alertbg").fadeIn()
})
$(".financebb center").click(function(){
	$(".financebb").fadeOut()
	$(".alertbg").fadeOut()
})
/*记录*/
$(".financedeal h1 a").click(function(){
	$(".financedeaf").css("display","block")
	$(".financedeal").css("display","none")
})
$(".financedeaf h1 a").click(function(){
	$(".financedeal").css("display","block")
	$(".financedeaf").css("display","none")
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
