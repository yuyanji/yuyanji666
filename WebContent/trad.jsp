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
								<th>开盘价</th>
								<th scope="col" width="45%">动作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${stock}" var="item">
								<tr>
									<th scope="row">${item.stockname}</th>
									<td>${item.oppr}</td>
									<td><a type="button" href="AddOptional"
										class="btn btn-primary"
										${menu_item=='AddOptional'?'active':''}>加入自选股</a> <a
										type="button" href="BuyStock" class="btn btn-primary"
										${menu_item=='BuyStock'?'active':''}>交易</a></td>
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