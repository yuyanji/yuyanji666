package jm;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jm.entity.User;
import jm.entity.UserService;

@WebServlet("/LoginAction")
public class LoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String yzm = request.getParameter("code");

		// �ȱȽ���֤���Ƿ���ȷ
		// ��ȡsession�е���֤��
		HttpSession session = request.getSession();
		String s_verf = (String) session.getAttribute("verf");

		// 2.�Ƚ������У������session���У�����Ƿ�һ��
		if (s_verf.equals(yzm)) {
			User u = UserService.login(username, password);
			// 3.���һ����У���û���������
			if (u!=null) {
				// ��ȡ�û��ĻỰ����
				HttpSession session2 = request.getSession();
				session2.setAttribute("user", u);
				//session.setAttribute("username", username);
				// �Ƴ�session�е�����
				session.removeAttribute("verf");
				// ��ȷ,ת�����ɹ�ҳ��
				RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
				rd.forward(request, response);
			} else {
				// �û������벻��
				// ��ȷ,ת�����ɹ�ҳ��
				RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
				request.setAttribute("input_name", username);
				request.setAttribute("info", "�û����������");
				rd.forward(request, response);
			}
		} else {
			// ����У���벻��
			RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
			request.setAttribute("input_name", username);
			request.setAttribute("info", "У�������");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
