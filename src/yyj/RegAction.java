package yyj;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yyj.entity.UserService;

@WebServlet("/RegAction")
public class RegAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegAction() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String password1 = request.getParameter("password");
		String name = request.getParameter("name");
		String sex = request.getParameter("sex");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		String age = request.getParameter("age");
		String job = request.getParameter("job");
		try {

			// 执行sql

			// 添加用户
			UserService.addUser(username, name, password1, sex, tel, address, age, job);

			// 3.输出
			request.setAttribute("username", username);
			request.setAttribute("name", name);
			request.setAttribute("sex", sex);
			request.setAttribute("tel", tel);
			request.setAttribute("address", address);
			request.setAttribute("age", age);
			request.setAttribute("job", job);
			// System.out.println(un);
			// 转发对象 path-->转发的目标地址
			RequestDispatcher rd = request.getRequestDispatcher("regSuccess.jsp");

			// 转发
			rd.forward(request, response);

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("数据库驱动没有找到！");
			e.printStackTrace();

			errorForward("数据库驱动没有找到！", request, response);

		} catch (SQLException e) {

			System.out.println("数据库连接异常！");

			e.printStackTrace();
			errorForward("数据库连接异常！", request, response);

		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	//发生异常时处理
	private void errorForward(String info,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		//发生错误时，转发到错误页面
//		request.setAttribute("info", info);
		// 转发对象 path-->转发的目标地址
		RequestDispatcher rd = request.getRequestDispatcher("reg.jsp");
		// 转发
		rd.forward(request, response);
	}

}
