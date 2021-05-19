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


@WebServlet("/UserInfo")
public class UserInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		//1、获取id为1的用户
		User users = UserService.getUserById(Integer.parseInt(id));
		
		//2、查询用户的数据
		
		
		//3、把数据转发到显示的jsp中
		
		//把数据放到请求中
		request.setAttribute("userInfo",users);
		
		RequestDispatcher rd = request.getRequestDispatcher("userInfo.jsp");
		
		request.setAttribute("menu_item", "UserInfo");
		
		rd.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
