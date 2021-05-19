package yyj.entity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

//用户服务类
public class UserService01 {
	
	public static Connection getConnection() throws SQLException {
		//获取数据库连接
				       // 1).注册驱动
						try {
							Class.forName("com.mysql.jdbc.Driver");
						} catch (ClassNotFoundException e) {
							
							e.printStackTrace();
						}

						// 2).获取与数据库的连接
						String url = "JDBC:mysql://localhost:3306/test?useUnicode=true&characterEncoding=utf-8";
						String username = "root";
						String password1 = "yuyanji";
						Connection conn = DriverManager.getConnection(url, username, password1);
						return conn;
	}

	// 添加用户
	public static void addUser(String username,String name, String password,String sex,String tel,String address,String age,String job) throws ClassNotFoundException, SQLException {
		//获取连接
		Connection conn=UserService01.getConnection();
		
		
		//1.创建QueryRunner对象，用来操作SQL语句
		QueryRunner qr = new QueryRunner();
		
		//2.创建SQL语句
		String sql = "insert into user(username,name,password,sex,tel,address,age,job) VALUES(?,?,?,?,?,?,?,?)";
		
		//3.执行SQL语句
		qr.update(conn, sql, username,name,password,sex,tel,address,age,job);
		
		//4.关闭相关的资源
		DbUtils.close(conn);
		
		
/*
		Connection conn = null;
		PreparedStatement ps = null;

		// 1).注册驱动
		Class.forName("com.mysql.jdbc.Driver");

		// 2).获取与数据库的连接
		String url = "jdbc:mysql://127.0.0.1:3309/db214?useUnicode=true&characterEncoding=utf-8";
		String username = "root";
		String password1 = "1234";
		conn = DriverManager.getConnection(url, username, password1);

		// 3).获取用于向数据库发送sql语句的statement,PreparedStatement，4小步
		String sql = "insert into t_user_214(username,password,sex,strong,major,photo,regdate,ip) VALUES(?,?,?,?,?,?,?,?)";
		ps = conn.prepareStatement(sql);

		ps.setString(1, un);
		ps.setString(2, password);
		ps.setString(3, sex);
		ps.setString(4, strong);
		ps.setString(5, major);
		ps.setString(6, photo);
		ps.setString(7, time);
		ps.setString(8, ip);

		// 4).向数据库发送sql语句 ，并获取结果
		ps.executeUpdate();
			if(conn!=null) {
				conn.close();
			}
			if(ps!=null) {
				ps.close();
			}
			
			
*/
	}	

	//根据用户名和密码查找用户
	public static User findUser(String username,String password) throws SQLException {
		
		//获取连接
				Connection conn=UserService01.getConnection();
		
		//获取数据库连接
		/*
		 * // 1).注册驱动 try { Class.forName("com.mysql.jdbc.Driver"); } catch
		 * (ClassNotFoundException e) { // TODO Auto-generated catch block
		 * e.printStackTrace(); }
		 * 
		 * // 2).获取与数据库的连接 String url =
		 * "jdbc:mysql://127.0.0.1:3309/db214?useUnicode=true&characterEncoding=utf-8";
		 * String username = "root"; String password1 = "1234"; Connection conn =
		 * DriverManager.getConnection(url, username, password1);
		 */
						//1.创建QueryRunner对象，用来操作SQL语句
						QueryRunner qr = new QueryRunner();
						
						//2.创建SQL语句
						String sql = "SELECT * from user where username=? and password=?";
						
						//3.执行SQL语句
						User user=qr.query(conn,sql,new BeanHandler<User>(User.class),username,password);
						
						
						//4.关闭相关的资源
						DbUtils.close(conn);	
						return user;
						
	}



	//获取所有的用户
	public static List<User> findAllUser() throws SQLException{
		//获取连接
				Connection conn=UserService01.getConnection();
				
				
				//1.创建QueryRunner对象，用来操作SQL语句
				QueryRunner qr = new QueryRunner();
				
				//2.创建SQL语句
				String sql = "select * from user";
				
				//3.执行SQL语句
				List<User> users=qr.query(conn, sql,new BeanListHandler<User>(User.class));
				
				//4.关闭相关的资源
				DbUtils.close(conn);
				return users;
	}




	//用户名模糊查询
	public static List<User> findUsersByName(String key) throws SQLException{
		//获取连接
		Connection conn=UserService01.getConnection();
		
		
		//1.创建QueryRunner对象，用来操作SQL语句
		QueryRunner qr = new QueryRunner();
		
		//2.创建SQL语句
		String sql = "select * from user where username like ?";
		key="%"+key+"%";
		//3.执行SQL语句
		List<User> users=qr.query(conn, sql,new BeanListHandler<User>(User.class),key);
		
		//4.关闭相关的资源
		DbUtils.close(conn);
		return users;
	}

	
	
	//根据用户名获取用户信息
	public static User findUserByName(String name) throws SQLException {
		//获取连接
		Connection conn=UserService01.getConnection();


				//1.创建QueryRunner对象，用来操作SQL语句
				QueryRunner qr = new QueryRunner();
				
				//2.创建SQL语句
				String sql = "SELECT * from user where username=?";
				
				//3.执行SQL语句
				User user=qr.query(conn,sql,new BeanHandler<User>(User.class),name);
				
				
				//4.关闭相关的资源
				DbUtils.close(conn);	
				return user;
	
	}
	
	
	
	//根据用户id获取用户信息
		public static User findUserByName(int id) throws SQLException {
			//获取连接
			Connection conn=UserService01.getConnection();


					//1.创建QueryRunner对象，用来操作SQL语句
					QueryRunner qr = new QueryRunner();
					
					//2.创建SQL语句
					String sql = "SELECT * from user where username=?";
					
					//3.执行SQL语句
					User user=qr.query(conn,sql,new BeanHandler<User>(User.class),id);
					
					
					//4.关闭相关的资源
					DbUtils.close(conn);	
					return user;
		
		}
		
		//根据用户工作获取用户信息
				@SuppressWarnings("unchecked")
				public static List<User> findUserByName1(String major) throws SQLException {
					//获取连接
					Connection conn=UserService01.getConnection();


							//1.创建QueryRunner对象，用来操作SQL语句
							QueryRunner qr = new QueryRunner();
							
							//2.创建SQL语句
							String sql = "SELECT * from user where job=?";
							
							//3.执行SQL语句
							List<User> user=(List<User>) qr.query(conn,sql,new BeanListHandler<User>(User.class),major);
							
							
							//4.关闭相关的资源
							DbUtils.close(conn);	
							return user;
				
				}


}








