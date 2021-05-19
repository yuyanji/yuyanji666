package yyj.entity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

//�û�������
public class UserService01 {
	
	public static Connection getConnection() throws SQLException {
		//��ȡ���ݿ�����
				       // 1).ע������
						try {
							Class.forName("com.mysql.jdbc.Driver");
						} catch (ClassNotFoundException e) {
							
							e.printStackTrace();
						}

						// 2).��ȡ�����ݿ������
						String url = "JDBC:mysql://localhost:3306/test?useUnicode=true&characterEncoding=utf-8";
						String username = "root";
						String password1 = "yuyanji";
						Connection conn = DriverManager.getConnection(url, username, password1);
						return conn;
	}

	// ����û�
	public static void addUser(String username,String name, String password,String sex,String tel,String address,String age,String job) throws ClassNotFoundException, SQLException {
		//��ȡ����
		Connection conn=UserService01.getConnection();
		
		
		//1.����QueryRunner������������SQL���
		QueryRunner qr = new QueryRunner();
		
		//2.����SQL���
		String sql = "insert into user(username,name,password,sex,tel,address,age,job) VALUES(?,?,?,?,?,?,?,?)";
		
		//3.ִ��SQL���
		qr.update(conn, sql, username,name,password,sex,tel,address,age,job);
		
		//4.�ر���ص���Դ
		DbUtils.close(conn);
		
		
/*
		Connection conn = null;
		PreparedStatement ps = null;

		// 1).ע������
		Class.forName("com.mysql.jdbc.Driver");

		// 2).��ȡ�����ݿ������
		String url = "jdbc:mysql://127.0.0.1:3309/db214?useUnicode=true&characterEncoding=utf-8";
		String username = "root";
		String password1 = "1234";
		conn = DriverManager.getConnection(url, username, password1);

		// 3).��ȡ���������ݿⷢ��sql����statement,PreparedStatement��4С��
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

		// 4).�����ݿⷢ��sql��� ������ȡ���
		ps.executeUpdate();
			if(conn!=null) {
				conn.close();
			}
			if(ps!=null) {
				ps.close();
			}
			
			
*/
	}	

	//�����û�������������û�
	public static User findUser(String username,String password) throws SQLException {
		
		//��ȡ����
				Connection conn=UserService01.getConnection();
		
		//��ȡ���ݿ�����
		/*
		 * // 1).ע������ try { Class.forName("com.mysql.jdbc.Driver"); } catch
		 * (ClassNotFoundException e) { // TODO Auto-generated catch block
		 * e.printStackTrace(); }
		 * 
		 * // 2).��ȡ�����ݿ������ String url =
		 * "jdbc:mysql://127.0.0.1:3309/db214?useUnicode=true&characterEncoding=utf-8";
		 * String username = "root"; String password1 = "1234"; Connection conn =
		 * DriverManager.getConnection(url, username, password1);
		 */
						//1.����QueryRunner������������SQL���
						QueryRunner qr = new QueryRunner();
						
						//2.����SQL���
						String sql = "SELECT * from user where username=? and password=?";
						
						//3.ִ��SQL���
						User user=qr.query(conn,sql,new BeanHandler<User>(User.class),username,password);
						
						
						//4.�ر���ص���Դ
						DbUtils.close(conn);	
						return user;
						
	}



	//��ȡ���е��û�
	public static List<User> findAllUser() throws SQLException{
		//��ȡ����
				Connection conn=UserService01.getConnection();
				
				
				//1.����QueryRunner������������SQL���
				QueryRunner qr = new QueryRunner();
				
				//2.����SQL���
				String sql = "select * from user";
				
				//3.ִ��SQL���
				List<User> users=qr.query(conn, sql,new BeanListHandler<User>(User.class));
				
				//4.�ر���ص���Դ
				DbUtils.close(conn);
				return users;
	}




	//�û���ģ����ѯ
	public static List<User> findUsersByName(String key) throws SQLException{
		//��ȡ����
		Connection conn=UserService01.getConnection();
		
		
		//1.����QueryRunner������������SQL���
		QueryRunner qr = new QueryRunner();
		
		//2.����SQL���
		String sql = "select * from user where username like ?";
		key="%"+key+"%";
		//3.ִ��SQL���
		List<User> users=qr.query(conn, sql,new BeanListHandler<User>(User.class),key);
		
		//4.�ر���ص���Դ
		DbUtils.close(conn);
		return users;
	}

	
	
	//�����û�����ȡ�û���Ϣ
	public static User findUserByName(String name) throws SQLException {
		//��ȡ����
		Connection conn=UserService01.getConnection();


				//1.����QueryRunner������������SQL���
				QueryRunner qr = new QueryRunner();
				
				//2.����SQL���
				String sql = "SELECT * from user where username=?";
				
				//3.ִ��SQL���
				User user=qr.query(conn,sql,new BeanHandler<User>(User.class),name);
				
				
				//4.�ر���ص���Դ
				DbUtils.close(conn);	
				return user;
	
	}
	
	
	
	//�����û�id��ȡ�û���Ϣ
		public static User findUserByName(int id) throws SQLException {
			//��ȡ����
			Connection conn=UserService01.getConnection();


					//1.����QueryRunner������������SQL���
					QueryRunner qr = new QueryRunner();
					
					//2.����SQL���
					String sql = "SELECT * from user where username=?";
					
					//3.ִ��SQL���
					User user=qr.query(conn,sql,new BeanHandler<User>(User.class),id);
					
					
					//4.�ر���ص���Դ
					DbUtils.close(conn);	
					return user;
		
		}
		
		//�����û�������ȡ�û���Ϣ
				@SuppressWarnings("unchecked")
				public static List<User> findUserByName1(String major) throws SQLException {
					//��ȡ����
					Connection conn=UserService01.getConnection();


							//1.����QueryRunner������������SQL���
							QueryRunner qr = new QueryRunner();
							
							//2.����SQL���
							String sql = "SELECT * from user where job=?";
							
							//3.ִ��SQL���
							List<User> user=(List<User>) qr.query(conn,sql,new BeanListHandler<User>(User.class),major);
							
							
							//4.�ر���ص���Դ
							DbUtils.close(conn);	
							return user;
				
				}


}








