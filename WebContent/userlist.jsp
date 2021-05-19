<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<%@ include file="WEB-INF/jsp/nav.jsp"%>
	<br>
	<div class="row">
		<!-- 左边栏 -->
		<%@ include file="WEB-INF/jsp/lf.jsp"%>
		<div class="col-sm-7" style="background-color: lavenderblush;">
			<div class="card">
				<div class="card-header">用户列表</div>
				<div class="card-body" style="padding: 0px">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>序号</th>
								<th>姓名</th>
								<th>性别</th>
								<th>工作</th>
								<th scope="col" width="45%">动作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${users}" var="item">
								<tr>
									<th scope="row">${item.id}</th>
									<td>${item.username}</td>
									<td>${item.sex}</td>
									<td>${item.job}</td>
									<td>
									<a type="button" href="UserInfo?id=${item.id}" class="btn btn-primary">详情</a>
									<a type="button" href="UserUpdate?id=${item.id}" class="btn btn-primary">修改用户信息</a>
									<a type="button" href="UserInfo?id=${item.id}" class="btn btn-primary">修改用户密码</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<%@ include file="WEB-INF/jsp/rg.jsp"%>
	</div>
</body>
</html>