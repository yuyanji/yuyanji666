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
				<!-- 主内容区 -->
				<div class="col-md">
					<div class="card">
						<div class="card-header">用户详情</div>
						<div class="card-body">
							<form>
								<div class="form-group row">
									<label for="staticEmail" class="col-sm-2 col-form-label">用户id</label>
									<div class="col-sm-10">
										<input type="text" readonly class="form-control-plaintext"
											id="staticEmail" value="${userInfo.id}">
									</div>
								</div>
								<div class="form-group row">
									<label for="staticEmail" class="col-sm-2 col-form-label">用户名</label>
									<div class="col-sm-10">
										<input type="text" readonly class="form-control-plaintext"
											id="staticEmail" value="${userInfo.username}">
									</div>
								</div>
								<div class="form-group row">
									<label for="staticEmail" class="col-sm-2 col-form-label">姓名</label>
									<div class="col-sm-10">
										<input type="text" readonly class="form-control-plaintext"
											id="staticEmail" value="${userInfo.name}">
									</div>
								</div>
								<div class="form-group row">
									<label for="inputPassword" class="col-sm-2 col-form-label">性别</label>
									<div class="col-sm-10">
										<input type="text" readonly class="form-control-plaintext"
											id="staticEmail" value="${userInfo.sex}">
									</div>
								</div>
								<div class="form-group row">
									<label for="inputPassword" class="col-sm-2 col-form-label">年龄</label>
									<div class="col-sm-10">
										<input type="text" readonly class="form-control-plaintext"
											id="staticEmail" value="${userInfo.age}">
									</div>
								</div>
								<div class="form-group row">
									<label for="inputPassword" class="col-sm-2 col-form-label">联系方式</label>
									<div class="col-sm-10">
										<input type="text" readonly class="form-control-plaintext"
											id="staticEmail" value="${userInfo.tel}">
									</div>
								</div>
								<div class="form-group row">
									<label for="staticEmail" class="col-sm-2 col-form-label">地址</label>
									<div class="col-sm-10">
										<input type="text" readonly class="form-control-plaintext"
											id="staticEmail" value="${userInfo.address}">
									</div>
								</div>
								<div class="form-group row">
									<label for="inputPassword" class="col-sm-2 col-form-label">职业</label>
									<div class="col-sm-10">
										<input type="text" readonly class="form-control-plaintext"
											id="staticEmail" value="${userInfo.job}">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 右边栏 -->
		<%@ include file="WEB-INF/jsp/rg.jsp"%>
	</div>
</body>
</html>