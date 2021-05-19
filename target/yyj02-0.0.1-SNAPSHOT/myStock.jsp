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
				<div class="card-header">股票列表</div>
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