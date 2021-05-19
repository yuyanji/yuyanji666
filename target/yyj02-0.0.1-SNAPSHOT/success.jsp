<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>嘿呀</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 框架 -->
<%@ include file="WEB-INF/jsp/bt.jsp"%>

</head>
<body>
	<!-- 导航条 -->
	<%@ include file="WEB-INF/jsp/nav.jsp"%>
	<br>
	<div class="row" style="margin-top: 10px">
		<!-- 左边栏 -->
		<%@ include file="WEB-INF/jsp/lf.jsp"%>
		<div class="col-md">
			<div class="card">
					<div class="card-header">用户登录</div>
					<div class="card-body">
						 <h1>登录成功，欢迎${user.username}!</h1>					 
					</div>
				</div>		
			</div>
		<%@ include file="WEB-INF/jsp/rg.jsp"%>
	</div>
</body>
</html>