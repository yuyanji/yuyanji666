package jm;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jm.entity.User;
import jm.entity.UserService;


@WebServlet("/UserQuery")
public class UserQuery extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		//1����ȡ�û�����Ĳ�ѯ�ؼ���
		String key = request.getParameter("key");
		
		//2����ѯ�û�������
		List<User> users = UserService.queryUsers(key);
		
		//3��������ת������ʾ��jsp��
		
		//�����ݷŵ�������
		request.setAttribute("users",users);
		
		RequestDispatcher rd = request.getRequestDispatcher("userlist.jsp");
		
		rd.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
