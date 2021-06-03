package jm.entity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

public class StockService {
	// 获取数据库连接
		public static Connection getConnect() {
			
			//建立连接
			String url ="JDBC:mysql://localhost:3306/test?userUnicode=true&characterEncoding=UTF-8";
			Connection conn = null;
			
			//注册驱动
			try {
				Class.forName("com.mysql.jdbc.Driver");
				
			    conn = DriverManager.getConnection(url,"root","zhecai600");
				
			} catch (ClassNotFoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				System.out.println("未连接到数据库");
			}
			return conn;
		}
	
	// 获取所有股票的数据
	public static List<Stock> getAllStock() {

		// 获取数据库连接
		Connection conn = UserService.getConnect();

		// QueryRunner DbUtils核心类
		QueryRunner runner = new QueryRunner();

		String sql1 = "Select * from stock_information";

		List<Stock> stock = new ArrayList<>();

		try {
			// 查询所有的用户数据，结果放入List<Stock>
			stock = runner.query(conn, sql1, new BeanListHandler<Stock>(Stock.class));

			DbUtils.closeQuietly(conn);

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return stock;
	}
	
	//获取股票相关信息
	public static List<Stock> getStock() {

		// 获取数据库连接
		Connection conn = UserService.getConnect();

		// QueryRunner DbUtils核心类
		QueryRunner runner = new QueryRunner();

		String sql1 = "select * from stock_information where date='2020-09-30'";

		List<Stock> stock = new ArrayList<>();

		try {
			// 查询所有的用户数据，结果放入List<Stock>
			stock = runner.query(conn, sql1, new BeanListHandler<Stock>(Stock.class));

			DbUtils.closeQuietly(conn);

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return stock;
	}
	
	//买股票
		public static List<Stock> buyStock() {

			// 获取数据库连接
			Connection conn = UserService.getConnect();

			// QueryRunner DbUtils核心类
			QueryRunner runner = new QueryRunner();

			String sql1 = "select * from stock_information where date='2020-09-30'";

			List<Stock> stock = new ArrayList<>();

			try {
				// 查询所有的用户数据，结果放入List<Stock>
				stock = runner.query(conn, sql1, new BeanListHandler<Stock>(Stock.class));

				DbUtils.closeQuietly(conn);

			} catch (SQLException e) {

				e.printStackTrace();
			}
			return stock;
		}
		
		//添加自选股票
				public static List<Stock> addOptional(int stockname) {
					// 获取数据库连接
					Connection conn = UserService.getConnect();

					// QueryRunner DbUtils核心类
					QueryRunner runner = new QueryRunner();

					String sql1 = "insert into stock_optional(stockname,date,oppr,clpr) (select stockname,date,oppr,clpr from stock_information) ";

					List<Stock> stock = new ArrayList<>();

					try {
						// 查询所有的用户数据，结果放入List<Stock>
						stock = runner.query(conn, sql1, new BeanListHandler<Stock>(Stock.class));

						DbUtils.closeQuietly(conn);

					} catch (SQLException e) {

						e.printStackTrace();
					}
					return stock;
				}
				
				// 获取自选股票的数据
				public static List<Stock> getOptionalStock() {

					// 获取数据库连接
					Connection conn = UserService.getConnect();

					// QueryRunner DbUtils核心类
					QueryRunner runner = new QueryRunner();

					String sql1 = "Select * from stock_optional";

					List<Stock> stock = new ArrayList<>();

					try {
						// 查询所有的用户数据，结果放入List<Stock>
						stock = runner.query(conn, sql1, new BeanListHandler<Stock>(Stock.class));

						DbUtils.closeQuietly(conn);

					} catch (SQLException e) {

						e.printStackTrace();
					}
					return stock;
				}
				
				// 获取已购买股票的数据
				public static List<Stock> getMyStock() {

					// 获取数据库连接
					Connection conn = UserService.getConnect();

					// QueryRunner DbUtils核心类
					QueryRunner runner = new QueryRunner();

					String sql1 = "Select * from stock_optional";

					List<Stock> stock = new ArrayList<>();

					try {
						// 查询所有的用户数据，结果放入List<Stock>
						stock = runner.query(conn, sql1, new BeanListHandler<Stock>(Stock.class));

						DbUtils.closeQuietly(conn);

					} catch (SQLException e) {

						e.printStackTrace();
					}
					return stock;
				}
}
