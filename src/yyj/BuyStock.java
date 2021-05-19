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
import yyj.entity.StockService;

@WebServlet("/BuyStock")
public class BuyStock extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1.获取所有的用户数据
		List<Stock> stock = StockService.getAllStock();

		// 2.把数据转发到显示中的jsp
		request.setAttribute("stock", stock);

		RequestDispatcher rd = request.getRequestDispatcher("buy.jsp");

		request.setAttribute("menu_item", "BuyStock");

		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
