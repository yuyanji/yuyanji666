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
				<div class="card-header">修改用户信息</div>
				<div class="card-body">
					<form>
						<div class="form-group row">
							<label for="staticEmail" class="col-sm-2 col-form-label">用户id</label>
							<div class="col-sm-10">
								<input type="text" readonly class="form-control-plaintext"
									id="staticEmail" value="${userUpdate.id}">
							</div>
						</div>
						<div class="form-group row">
							<label for="staticEmail" class="col-sm-2 col-form-label">用户名</label>
							<div class="col-sm-10">
								<input type="text" readonly class="form-control-plaintext"
									id="staticEmail" value="${userUpdate.username}">
							</div>
						</div>
						<div class="form-group row">
							<label for="staticEmail" class="col-sm-2 col-form-label">姓名</label>
							<div class="col-sm-10">
								<input type="text" readonly class="form-control-plaintext"
									id="staticEmail" value="${userUpdate.name}">
							</div>
						</div>
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-2 col-form-label">性别</label>
							<div class="col-sm-10">
								<input type="text" readonly class="form-control-plaintext"
									id="staticEmail" value="${userUpdate.sex}">
							</div>
						</div>
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-2 col-form-label">年龄</label>
							<div class="col-sm-10">
								<input type="text" readonly class="form-control-plaintext"
									id="staticEmail" value="${userUpdate.age}">
							</div>
						</div>
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-2 col-form-label">联系方式</label>
							<div class="col-sm-10">
								<input type="text" readonly class="form-control-plaintext"
									id="staticEmail" value="${userUpdate.tel}">
							</div>
						</div>
						<div class="form-group row">
							<label for="staticEmail" class="col-sm-2 col-form-label">地址</label>
							<div class="col-sm-10">
								<input type="text" readonly class="form-control-plaintext"
									id="staticEmail" value="${userUpdate.address}">
							</div>
						</div>
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-2 col-form-label">工作</label>
							<div class="col-sm-10">
								<input type="text" readonly class="form-control-plaintext"
									id="staticEmail" value="${userUpdate.job}">
							</div>
						</div>
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-2 col-form-label">职业</label>
							<div class="col-sm-10">
								<select class="form-control">
									<option value="学生"
										<c:if test="${userUpdate.job=='学生'}">selected</c:if>>学生</option>
									<option value="教师"
										<c:if test="${userUpdate.job=='教师'}">selected</c:if>>教师</option>
									<option value="医生"
										<c:if test="${userUpdate.job=='医生'}">selected</c:if>>医生</option>
									<option value="警察"
										<c:if test="${userUpdate.job=='警察'}">selected</c:if>>警察</option>
								</select>
							</div>
						</div>
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-2 col-form-label"></label>
							<div class="col-sm-10">
								<button type="submit" class="btn btn-primary">更新</button>
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