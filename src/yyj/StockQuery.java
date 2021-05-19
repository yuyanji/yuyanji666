package yyj;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yyj.entity.Stock;
import yyj.entity.User;
import yyj.entity.UserService;
import yyj.entity.StockService;

@WebServlet("/StockQuery")
public class StockQuery extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		//1����ȡ�û�����Ĺ�Ʊ�� 
		String key = request.getParameter("key");
		
		//2����ѯ��Ʊ������
		List<Stock> stock = StockService.queryStock(key);
		
		//3��������ת������ʾ��jsp��
		
		//�����ݷŵ�������
		request.setAttribute("stock",stock);
		
		RequestDispatcher rd = request.getRequestDispatcher("stocklist.jsp");
		
		rd.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
