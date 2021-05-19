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

//�����࣬���е�ҵ���߼�
public class UserService {

	// ��ȡ���ݿ�����
	public static Connection getConnect() {
		
		//��������
		String url ="JDBC:mysql://localhost:3306/test?userUnicode=true&characterEncoding=UTF-8";
		Connection conn = null;
		
		//ע������
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
		    conn = DriverManager.getConnection(url,"root","yuyanji");
			
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("δ���ӵ����ݿ�");
		}
		return conn;
	}

	// �û�ע��
		public static void addUser(String name,String username, String password,String sex,String tel,String address,String age,String job) throws ClassNotFoundException, SQLException {
			//��ȡ����
			Connection conn=UserService01.getConnection();
			
			
			//1.����QueryRunner������������SQL���
			QueryRunner qr = new QueryRunner();
			
			//2.����SQL���
			String sql = "insert into user(name,username,password,sex,tel,address,age,job) VALUES(?,?,?,?,?,?,?,?)";
			
			//3.ִ��SQL���
			qr.update(conn, sql, name,username,password,sex,tel,address,age,job);
			
			//4.�ر���ص���Դ
			DbUtils.close(conn);
		}
			
			

	// �û���¼
	public static User login(String username, String password) {
		
		Connection conn = UserService.getConnect();
		
		//QueryRunner DbUtils������
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
	
	//��ȡ�����û�������
	public static List<User> getAllUser(){
		
		//��ȡ���ݿ�����
        Connection conn = UserService.getConnect();
		
		//QueryRunner DbUtils������
		QueryRunner runner = new QueryRunner();
		
		String sql1 = "Select * from user";
		
		List<User> users = new ArrayList<>(); 
		
		try {
			//��ѯ���е��û����ݣ��������List<User>
			users = runner.query(conn, sql1,new BeanListHandler<User>(User.class));
			
			DbUtils.closeQuietly(conn);

		}catch(SQLException e) {
			
			e.printStackTrace();
		}
		return users;
	}
	
	//ģ����ѯ�û�������
		public static List<User> queryUsers(String key){
			
			//��ȡ���ݿ�����
	        Connection conn = UserService.getConnect();
			
			//QueryRunner DbUtils������
			QueryRunner runner = new QueryRunner();
			
			key = "%"+key+"%";
			
			String sql1 = "Select * from user where username like ? or job like ?";
			
			List<User> users = new ArrayList<>(); 
			
			try {
				//��ѯ���е��û����ݣ��������List<User>
				users = runner.query(conn, sql1,new BeanListHandler<User>(User.class),key,key);
				
				DbUtils.closeQuietly(conn);

			}catch(SQLException e) {
				
				e.printStackTrace();
			}
			return users;
		}
		
		//����id��ȡ�û�
		public static User getUserById(int id){
			
			Connection conn = UserService.getConnect();
			
			//QueryRunner DbUtils������
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
