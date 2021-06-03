<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/index.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-4.4.1-dist/css/bootstrap.min.css" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>股票详情</title>
</head>
<body>
	<div id="headcon">
		<div class="contain">
			<ul>
				<li>HJC/CNY:<em>2156.00</em><i><img src="img/upa.png" /></i></li>
				<li>YDC/CNY:<em class="headcona">2156.00</em><i><img
						src="img/downa.png" /></i></li>
				<li>LTC/CNY:<em>2156.00</em><i><img src="img/upa.png" /></i></li>
				<li>BCC/CNY:<em class="headcona">2156.00</em><i><img
						src="img/downa.png" /></i></li>
			</ul>
			<p>
				<strong>${user==null?"未登录":user.username}</strong> ,
				<button>退出</button>
			</p>
			<div>
				<span>登录</span>|<a href="reg.jsp">注册</a>
			</div>
		</div>
	</div>
	<div id="nav">
		<div class="contain">
			<p>
				<a href="index.jsp"></a>
			</p>
			<ul>
				<li><a href="index.jsp">首页</a></li>
				<div class="togglea">
					<span class="now">交易中心</span>
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
								<a href=""><img src="img/596ef78673f84.jpg" />股票3</a>
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
			<div class="navtop">
				<h1>
					<img src="img/money.png" />账户预览
				</h1>
				<div class="navhead">
					<i></i>
					<div>
						<center>
							账户总资产：￥<u>0.00</u>
						</center>
						<span><em>可用</em><em>冻结</em></span>
						<dl>
							<dd>
								<strong>人民币</strong> <em>12412.00</em> <em>0.00</em>
							</dd>
							<dd>
								<strong>股票1</strong> <em>64512.000</em> <em>0.000</em>
							</dd>
							<dd>
								<strong>股票2</strong> <em>12.0000</em> <em>0.0000</em>
							</dd>
							<dd>
								<strong>股票3</strong> <em>12.0000</em> <em>0.0000</em>
							</dd>
							<dd>
								<strong>股票4</strong> <em>12.0000</em> <em>0.0000</em>
							</dd>
						</dl>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="content">
		<div class="col-sm-2 rounded  border-primary m-auto" >
			<div class="container w-auto p-3">
				<div class="list-group list-group-horizontal w-auto p-3">
					<a href="MyStockList" class="list-group-item list-group-item-action text-nowrap w-auto ${menu_item=='MyStockList'?'active':''}">我的股票</a>
					<a href="StockList" class="list-group-item list-group-item-action text-nowrap w-auto ${menu_item=='StockList'?'active':''}">股票信息</a> 
					<a href="Trad" class="list-group-item list-group-item-action text-nowrap w-auto ${menu_item=='Trad'?'active':''}">模拟交易</a> 
					<a href="UserList" class="list-group-item list-group-item-action text-nowrap w-auto ${menu_item=='UserList'?'active':''}">用户列表</a> 
				</div>
			</div>
		</div>
			<div class="card">
				<div class="card-body" style="padding: 0px">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>股票名</th>
								<th>日期</th>
								<th>开盘价</th>
								<th>收盘价</th>
								<th>收益率</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${stock}" var="item">
								<tr>
									<th scope="row">${item.stockname}</th>
									<td>${item.date}</td>
									<td>${item.oppr}</td>
									<td>${item.clpr}</td>
									<td>${item.dret}</td>
									<td><button class="list-group-item list-group-horizontal">查询</button></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			
			<div class="card">
				<div class="card-body" style="padding: 0px">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>用户名</th>
								<th>姓名</th>
								<th>电话</th>
								<th>性别</th>
								<th>年龄</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${users}" var="item">
								<tr>
									<th scope="row">${item.username}</th>
									<td>${item.name}</td>
									<td>${item.tel}</td>
									<td>${item.sex}</td>
									<td>${item.age}</td>
								</tr>
							</c:forEach>
						</tbody>
						
					</table>
				</div>
			</div>
			
			
			<div class="card">
				<div class="card-body" style="padding: 0px">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>所有人</th>
								<th>股票名</th>
								<th>日期</th>
								<th>开盘价</th>
								<th>收盘价</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${stock1}" var="item">
								<tr>
									<th scope="row">${item.username}</th>
									<td>${item.stockname}</td>
									<td>${item.date}</td>
									<td>${item.oppr}</td>
									<td>${item.clpr}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
	</div>

	<script src="js/jquery.min.js"></script>
	<script>
		$(".togglea").mouseenter(function() {
			$(".togglea span").css("background-image", "url(img/down2.png)")
			$(".togglea div").show();
		})
		$(".togglea").mouseleave(function() {
			$(".togglea span").css("background-image", "url(img/up2.png)")
			$(".togglea div").hide();
		})
		$("#nav .navtop h1").click(function() {
			$("#nav .navhead").toggle()
		})
	</script>
</body>
</html>