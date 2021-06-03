<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/index.css" />
<title>安全中心</title>
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
			<li><a href="finance.jsp">财务中心</a></li>
			<li><a href="safe.jsp" class="now">安全中心</a></li>
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
							<strong>股票1</strong>
							<em>12412.00</em>
							<em>0.00</em>
						</dd>
						<dd>
							<strong>股票2</strong>
							<em>64512.000</em>
							<em>0.000</em>
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
						<dd>
							<strong>股票5</strong>
							<em>12.0000</em>
							<em>0.0000</em>
						</dd>
					</dl>
				</div>
			</div>
		</div>
	</div>
</div>
<div id="safe">
	<div class="safehead">
		<center></center>
		<div>
			<p>账号：<span>1236545</span></p>
			<p>姓名：<span>1236545</span></p>
			<p>ID：<span>123</span></p>
			<p>身份证号：<span>350119********5865</span><em>已通过认证</em></p>
			<p>认证时间：<span>2017-12-23 12:23:45</span></p>
		</div>
		<h1>
			<span>更改实名认证信息流程：</span>
			<p>1.发送与上方认证信息一致的 身份证正反面照片或扫描件 以及手持身份证头部照给客服;手持身份证照示例图：如右</p>
			<p>2.审核更改申请；审核完成后，客服通知您申请是否通过</p>
			<p>3.申请通过，请您登录重新进行实名认证；申请失败，则请您根据提示信息重新提交申请</p>
		</h1>
	</div>
	<div class="safecon">
		<h1>
			<p class="safenow">安全设置</p>
			<p>钱包地址管理</p>
		</h1>
		<div class="safecont">
			<div class="safeconta safeindent">
				<p>
					<em>登录密码</em>
					<i>登录账户时需要输入的密码</i>
					<span onclick="loginpwd()">重置</span>
				</p>
				<p>
					<em>交易密码</em>
					<i>进行交易时需要输入的密码</i>
					<span onclick="jypwd()">重置</span>
				</p>
				<p>
					<em>手机绑定</em>
					<i>提现时需要使用</i>
					<span>已绑定手机号：<u>135****8856</u></span>
				</p>
			</div>
			<div class="safecontb safeindent">
				<div class="safecont-head">
					<p>
						<select>
							<option>股票1</option>
							<option>股票2</option>
							<option>股票3</option>
							<option>股票4</option>
						</select>
					</p>
					<p>钱包标识</p>
					<p>钱包地址</p>
					<p>添加时间</p>
					<p>操作</p>
				</div>
				<ul>
					<li>
						<p>股票1</p>
						<p>1234344</p>
						<p>sdfadgadfadf</p>
						<p>2017-09-13 15:23:45</p>
						<p><a>删除</a></p>
					</li>
					<li>
						<p>股票2</p>
						<p>1234344</p>
						<p>sdfadgadfadf</p>
						<p>2017-09-13 15:23:45</p>
						<p><a>删除</a></p>
					</li>
				</ul>
				<span onclick="addressa()">添加一个地址</span>
			</div>
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
<div class="alertbg"></div>
<div class="financebg financebb safebga">
	<h1>重置登录密码</h1>
	<div>
		<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;登录密码：<input type="text" placeholder="请输入原登录密码"/></p>
		<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;新登录密码：<input type="text" placeholder="请输入新登录密码"/></p>
		<p>再次输入新密码：<input type="text" placeholder="请再输入新登录密码"/></p>
		<button>保存</button><center>关闭</center>
	</div>
</div>
<div class="financebg financebb safebgb">
	<h1>重置交易密码</h1>
	<div>
		<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;交易密码：<input type="text" placeholder="请输入原交易密码"/></p>
		<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;新交易密码：<input type="text" placeholder="请输入新交易密码"/></p>
		<p>再次输入新密码：<input type="text" placeholder="请再输入新交易密码"/></p>
		<button>保存</button><center>关闭</center>
	</div>
</div>
<div class="financebg financebb safebgc">
	<h1>添加钱包地址<span>股票1</span></h1>
	<div>
		<p>钱包标识：<input type="text" placeholder="请输入钱包标识"/></p>
		<p>钱包地址：<input type="text" placeholder="请输入钱包地址"/></p>
		<p>交易密码：<input type="text" placeholder="请再输入交易密码"/></p>
		<button>添加</button><center>关闭</center>
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
/*重置登录密码*/
function loginpwd(){
	$(".safebga").fadeIn()
	$(".alertbg").fadeIn()
}
$(".safebga center").click(function(){
	$(".safebga").fadeOut()
	$(".alertbg").fadeOut()
})
/*重置交易密码*/
function jypwd(){
	$(".safebgb").fadeIn()
	$(".alertbg").fadeIn()
}
$(".safebgb center").click(function(){
	$(".safebgb").fadeOut()
	$(".alertbg").fadeOut()
})
/*添加钱包地址*/
function addressa(){
	$(".safebgc").fadeIn()
	$(".alertbg").fadeIn()
}
$(".safebgc center").click(function(){
	$(".safebgc").fadeOut()
	$(".alertbg").fadeOut()
})
$('.safecon h1 p').click(function(){
	$(this).addClass('safenow').siblings().removeClass('safenow');
	$('.safeindent:eq('+$(this).index()+')').show().siblings().hide();	
})
</script>
</body>
</html>
