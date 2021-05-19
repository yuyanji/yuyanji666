package yyj;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yyj.entity.Stock;
import yyj.entity.StockService;

@WebServlet("/AddOptional")
public class AddOptional extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			//注册驱动
			Class.forName("com.mysql.jdbc.Driver");
			//建立连接
			String url ="JDBC:mysql://localhost:3306/test?userUnicode=true&characterEncoding=UTF-8";
			
			String user="root";
			
			String password = "yuyanji";
			
			Connection conn = DriverManager.getConnection(url,user,password);
			
			//3创建执行SQL的语句（Statement）
			Statement st = conn.createStatement();
		
		//	String sql = "insert into stock_optional(stockname,date,oppr,clpr) (select stockname,date,oppr,clpr from stock_information) ";
			
		//	String sql = "insert into stock_optional(?,?,?,?) (select stockname,date,oppr,clpr from stock_information) ";
			
		//	String sql = "insert into stock_optional(?,?,?,?) (select ?,?,?,? from stock_information) ";
			
			String sql = "insert into stock_optional(stockname,date,oppr,clpr) values('?','?','?','?')";
			
			st.execute(sql);
					
			//释放资源
			st.close();
			
			conn.close();
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
