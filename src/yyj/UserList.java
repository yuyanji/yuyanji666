package yyj;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yyj.entity.User;
import yyj.entity.UserService;

@WebServlet("/UserList")
public class UserList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1.获取所有的用户数据
		List<User> users = UserService.getAllUser();

		// 2.把数据转发到显示中的jsp
		request.setAttribute("users", users);

		RequestDispatcher rd = request.getRequestDispatcher("userlist.jsp");

		request.setAttribute("menu_item", "UserList");

		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
