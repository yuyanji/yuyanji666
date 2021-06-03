package jm;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jm.entity.UserService;

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
		String age = request.getParameter("age");
		try {

			// ִ��sql

			// ����û�
			UserService.addUser(name, username, password1, sex, tel, age);

			// 3.���
			request.setAttribute("username", username);
			request.setAttribute("name", name);
			request.setAttribute("sex", sex);
			request.setAttribute("tel", tel);

			request.setAttribute("age", age);

			// System.out.println(un);
			// ת������ path-->ת����Ŀ���ַ
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");

			// ת��
			rd.forward(request, response);

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("���ݿ�����û���ҵ���");
			e.printStackTrace();

			errorForward("���ݿ�����û���ҵ���", request, response);

		} catch (SQLException e) {

			System.out.println("���ݿ������쳣��");

			e.printStackTrace();
			errorForward("���ݿ������쳣��", request, response);

		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	//�����쳣ʱ����
	private void errorForward(String info,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		//��������ʱ��ת��������ҳ��
//		request.setAttribute("info", info);
		// ת������ path-->ת����Ŀ���ַ
		RequestDispatcher rd = request.getRequestDispatcher("reg.jsp");
		// ת��
		rd.forward(request, response);
	}

}
