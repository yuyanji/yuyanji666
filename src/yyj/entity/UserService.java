package yyj.entity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import yyj.entity.User;

//服务类，所有的业务逻辑
public class UserService {

	// 获取数据库连接
	public static Connection getConnect() {
		
		//建立连接
		String url ="JDBC:mysql://localhost:3306/test?userUnicode=true&characterEncoding=UTF-8";
		Connection conn = null;
		
		//注册驱动
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
		    conn = DriverManager.getConnection(url,"root","yuyanji");
			
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("未连接到数据库");
		}
		return conn;
	}

	// 用户注册
		public static void addUser(String name,String username, String password,String sex,String tel,String address,String age,String job) throws ClassNotFoundException, SQLException {
			//获取连接
			Connection conn=UserService01.getConnection();
			
			
			//1.创建QueryRunner对象，用来操作SQL语句
			QueryRunner qr = new QueryRunner();
			
			//2.创建SQL语句
			String sql = "insert into user(name,username,password,sex,tel,address,age,job) VALUES(?,?,?,?,?,?,?,?)";
			
			//3.执行SQL语句
			qr.update(conn, sql, name,username,password,sex,tel,address,age,job);
			
			//4.关闭相关的资源
			DbUtils.close(conn);
		}
			
			

	// 用户登录
	public static User login(String username, String password) {
		
		Connection conn = UserService.getConnect();
		
		//QueryRunner DbUtils核心类
		QueryRunner runner = new QueryRunner();
		
		String sql1 = "Select * from user where username=? and password=?";
		
		List<User> users;
		try {
			users = runner.query(conn, sql1,new BeanListHandler<User>(User.class),username,password);
			
			DbUtils.closeQuietly(conn);
			
			if(users.size()>0)
				return users.get(0);
			else
				return null;			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	//获取所有用户的数据
	public static List<User> getAllUser(){
		
		//获取数据库连接
        Connection conn = UserService.getConnect();
		
		//QueryRunner DbUtils核心类
		QueryRunner runner = new QueryRunner();
		
		String sql1 = "Select * from user";
		
		List<User> users = new ArrayList<>(); 
		
		try {
			//查询所有的用户数据，结果放入List<User>
			users = runner.query(conn, sql1,new BeanListHandler<User>(User.class));
			
			DbUtils.closeQuietly(conn);

		}catch(SQLException e) {
			
			e.printStackTrace();
		}
		return users;
	}
	
	//模糊查询用户的数据
		public static List<User> queryUsers(String key){
			
			//获取数据库连接
	        Connection conn = UserService.getConnect();
			
			//QueryRunner DbUtils核心类
			QueryRunner runner = new QueryRunner();
			
			key = "%"+key+"%";
			
			String sql1 = "Select * from user where username like ? or job like ?";
			
			List<User> users = new ArrayList<>(); 
			
			try {
				//查询所有的用户数据，结果放入List<User>
				users = runner.query(conn, sql1,new BeanListHandler<User>(User.class),key,key);
				
				DbUtils.closeQuietly(conn);

			}catch(SQLException e) {
				
				e.printStackTrace();
			}
			return users;
		}
		
		//根据id获取用户
		public static User getUserById(int id){
			
			Connection conn = UserService.getConnect();
			
			//QueryRunner DbUtils核心类
			QueryRunner runner = new QueryRunner();
			
			String sql1 = "Select * from user where id = ?";
			
			List<User> users;
			try {
				users = runner.query(conn, sql1,new BeanListHandler<User>(User.class),id);
				
				DbUtils.closeQuietly(conn);
				
				if(users.size()>0)
					return users.get(0);
				else
					return null;			
			}catch(SQLException e) {
				e.printStackTrace();
			}
			
			return null;
		}

}
