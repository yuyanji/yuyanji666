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

<script type="text/javascript">
	function changeImage(img) {
		img.src = img.src + "?" + new Date().getTime();
	}
</script>
</head>
<body>
	<%@ include file="WEB-INF/jsp/nav.jsp"%>​
	<div class="row">
		<!-- 左边栏 -->
		<%@ include file="WEB-INF/jsp/lf.jsp"%>

		<div class="col-sm-7" style="background-color: lavenderblush;">
			<form action="LoginAction" method="get">
				<div class="form-group">
					<label>用户名</label> <input type="text" class="form-control"
						name="username" value="${input_name}" placeholder="请输入用户名">
				</div>
				<div class="form-group">
					<label>密码</label> <input type="password" class="form-control"
						name="password" placeholder="请输入密码">
				</div>
				<div class="form-group">
					<label>验证码</label><img src="/yyj02/Response01"
						onclick="changeImage(this)"> <input type="text"
						class="form-control" name="code" placeholder="请输入验证码" value="">
				</div>
				<button type="submit" class="btn btn-primary">登录</button>
			</form>
		</div>
		<%@ include file="WEB-INF/jsp/rg.jsp"%>
	</div>
</body>
</html>