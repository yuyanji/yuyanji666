package yyj;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import yyj.entity.User;
import yyj.entity.UserService;

@WebServlet("/LoginAction")
public class LoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String yzm = request.getParameter("code");

		// 先比较验证码是否正确
		// 获取session中的验证码
		HttpSession session = request.getSession();
		String s_verf = (String) session.getAttribute("verf");

		// 2.比较输入的校验码与session里的校验码是否一致
		if (s_verf.equals(yzm)) {
			User u = UserService.login(username, password);
			// 3.如果一样，校验用户名和密码
			if (u!=null) {
				// 获取用户的会话对象
				HttpSession session2 = request.getSession();
				session2.setAttribute("user", u);
				//session.setAttribute("username", username);
				// 移除session中的属性
				session.removeAttribute("verf");
				// 正确,转发到成功页面
				RequestDispatcher rd = request.getRequestDispatcher("/success.jsp");
				rd.forward(request, response);
			} else {
				// 用户名密码不对
				// 正确,转发到成功页面
				RequestDispatcher rd = request.getRequestDispatcher("/login1.jsp");
				request.setAttribute("input_name", username);
				request.setAttribute("info", "用户名密码错误！");
				rd.forward(request, response);
			}
		} else {
			// 输入校验码不对
			RequestDispatcher rd = request.getRequestDispatcher("/login1.jsp");
			request.setAttribute("input_name", username);
			request.setAttribute("info", "校验码错误！");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
