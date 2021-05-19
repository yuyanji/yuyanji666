<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>	
		<div class="col-sm-2 rounded border border-primary" >
			<div class="container">
				<div class="list-group">
					<a href="Index" class="list-group-item list-group-item-action ${menu_item=='Index'?'active':''}">首页</a> 
					<a href="Login"	class="list-group-item list-group-item-action ${menu_item=='Login'?'active':''}">登录</a> 
					<a href="Reg"	class="list-group-item list-group-item-action ${menu_item=='Reg'?'active':''}">注册</a>
					<a href="StockList" class="list-group-item list-group-item-action ${menu_item=='StockList'?'active':''}">股票信息</a> 
					<a href="Trad" class="list-group-item list-group-item-action ${menu_item=='Trad'?'active':''}">模拟交易</a> 
					<a href="UserList" class="list-group-item list-group-item-action ${menu_item=='UserList'?'active':''}">用户列表</a> 
				</div>
			</div>
		</div>