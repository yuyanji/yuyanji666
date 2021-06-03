package jm;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jm.entity.Stock;
import jm.entity.StockService;

@WebServlet("/BuyStock")
public class BuyStock extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1.��ȡ���е��û�����
		List<Stock> stock = StockService.getAllStock();

		// 2.������ת������ʾ�е�jsp
		request.setAttribute("stock", stock);

		RequestDispatcher rd = request.getRequestDispatcher("myStock.jsp");

		request.setAttribute("menu_item", "BuyStock");

		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
