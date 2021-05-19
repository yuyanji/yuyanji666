<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<nav class="navbar navbar-expand-sm bg-secondary navbar-dark">
	<ul class="navbar-nav">
		<li class="nav-item active"><a class="nav-link" href="#">推荐股票</a></li>
		<li class="nav-item"><a class="nav-link" href="#">股票信息</a></li>
		<li class="nav-item"><a class="nav-link" href="#">新闻</a></li>
		<li class="nav-item dropdown"><a class="nav-link dropdown-toggle"
			href="#" id="navbardrop" data-toggle="dropdown">${user==null?"未登录":user.username}</a>
			<div class="dropdown-menu">
				<a class="dropdown-item" href="MyStockList" ${menu_item=='MyStockList'?'active':''}>查看持仓股</a> 
				<a class="dropdown-item" href="OptionalStockList" ${menu_item=='OptionalStockList'?'active':''}>查看自选股</a> 
				<a class="dropdown-item" href="LogOutAction">注销</a>
			</div></li>
	</ul>
	<form class="form-inline my-2 my-lg-0" method="post" action="StockQuery">
		<input class="form-control mr-sm-2" type="search" placeholder="请输入股票名"
			aria-label="Search" name="key">
		<button class="btn btn-outline-primary my-2 my-sm-0" type="submit">股票查询</button>
	</form>
</nav>