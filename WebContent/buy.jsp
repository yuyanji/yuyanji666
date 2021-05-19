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


		<div class="col-sm-7" style="background-color: lavenderblush;">
			<div class="card">
				<div class="card-header">股票信息</div>
				<div class="card-body" style="padding: 0px">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>股票名</th>
								<th>开盘价</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${stock}" var="item">
								<tr>
									<th scope="row">${item.stockname}</th>
									<td>${item.oppr}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<form>
						<div class="form-group row">
							<label for="inputEmail3" class="col-sm-2 col-form-label">购买股数</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="shares"
									placeholder="请输入购买股数">
							</div>
						</div>
						<div>
							<label for="inputEmail3" class="col-sm-2 col-form-label">需付金额</label>
							<div class="col-sm-10">
								<label for="inputEmail3" class="form-control">
								</label>
							</div>
						</div>
					</form>
				</div>
			</div>

		</div>


		<%@ include file="WEB-INF/jsp/rg.jsp"%>
	</div>
</body>
</html>