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
	<%@ include file="WEB-INF/jsp/nav.jsp"%>
	<br>
	<div class="row">
		<!-- 左边栏 -->
		<%@ include file="WEB-INF/jsp/lf.jsp"%>

		<div class="col-sm-7" style="background-color: lavenderblush;">
			<form action="RegAction">
				<div class="form-group row">
					<label for="inputEmail3" class="col-sm-2 col-form-label">用户名</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="username"
							placeholder="请输入用户名">
					</div>
				</div>
				<div class="form-group row">
					<label for="inputPassword3" class="col-sm-2 col-form-label">密码</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" name="password"
							placeholder="请输入密码">
					</div>
				</div>
				<div class="form-group row">
					<label for="inputEmail3" class="col-sm-2 col-form-label">姓名</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="name"
							placeholder="请输入真实姓名">
					</div>
				</div>
				<fieldset class="form-group">
					<div class="row">
						<legend class="col-form-label col-sm-2 pt-0">性别</legend>
						<div class="col-sm-10">
							<div class="form-check">
								<input class="form-check-input" type="radio" name="sex"
									id="男" checked> <label
									class="form-check-label" for="男"> 男 </label>
							</div>
							<div class="form-check ">
								<input class="form-check-input" type="radio" name="sex"
									id="女"> <label
									class="form-check-label" for="女"> 女 </label>
							</div>
						</div>
					</div>
				</fieldset>
				<div class="form-group row">
					<label for="inputEmail3" class="col-sm-2 col-form-label">联系电话</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="tel"
							placeholder="请输入联系电话">
					</div>
				</div>
				<div class="form-group row">
					<label for="inputEmail3" class="col-sm-2 col-form-label">家庭住址</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="address"
							placeholder="请输入家庭住址">
					</div>
				</div>
				<div class="form-group row">
					<label for="inputEmail3" class="col-sm-2 col-form-label">年龄</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="age"
							placeholder="请输入年龄">
					</div>
				</div>
				<div class="form-group row">
					<label for="inputEmail3" class="col-sm-2 col-form-label">工作</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="job"
							placeholder="请输入工作">
					</div>
				</div>
				<div class="form-group row">
					<div class="col-sm-10">
						<button type="submit" class="btn btn-primary">提交</button>
					</div>
				</div>
			</form>
		</div>
		<%@ include file="WEB-INF/jsp/rg.jsp"%>
	</div>
</body>
</html>