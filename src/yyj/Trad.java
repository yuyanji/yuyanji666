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

@WebServlet("/Trad")
public class Trad extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1.获取所有的股票数据
		List<Stock> stock = StockService.getStock();

		// 2.把数据转发到显示中的jsp
		request.setAttribute("stock", stock);

		RequestDispatcher rd = request.getRequestDispatcher("trad.jsp");

		request.setAttribute("menu_item", "Trad");

		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
