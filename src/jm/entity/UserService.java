package jm.entity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import jm.entity.User;

//锟斤拷锟斤拷锟洁，锟斤拷锟叫碉拷业锟斤拷锟竭硷拷
public class UserService {

	// 锟斤拷取锟斤拷锟捷匡拷锟斤拷锟斤拷
	public static Connection getConnect() {

		// 锟斤拷锟斤拷锟斤拷锟斤拷
		String url = "JDBC:mysql://localhost:3306/test?userUnicode=true&characterEncoding=UTF-8";
		Connection conn = null;

		// 注锟斤拷锟斤拷锟斤拷
		try {
			Class.forName("com.mysql.jdbc.Driver");

			conn = DriverManager.getConnection(url, "root", "zhecai600");

		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("未锟斤拷锟接碉拷锟斤拷锟捷匡拷");
		}
		return conn;
	}

	// 锟矫伙拷注锟斤拷
	public static void addUser(String name, String username, String password, String sex, String tel, 
			String age) throws ClassNotFoundException, SQLException {
		// 锟斤拷取锟斤拷锟斤拷
		Connection conn = UserService01.getConnection();

		// 1.锟斤拷锟斤拷QueryRunner锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷SQL锟斤拷锟�
		QueryRunner qr = new QueryRunner();

		// 2.锟斤拷锟斤拷SQL锟斤拷锟�
		String sql = "insert into user(name,username,password,sex,tel,age) VALUES(?,?,?,?,?,?)";

		// 3.执锟斤拷SQL锟斤拷锟�
		qr.update(conn, sql, name, username, password, sex, tel, age);

		// 4.锟截憋拷锟斤拷氐锟斤拷锟皆�
		DbUtils.close(conn);
	}

	// 锟矫伙拷锟斤拷录
	public static User login(String username, String password) {

		Connection conn = UserService.getConnect();

		// QueryRunner DbUtils锟斤拷锟斤拷锟斤拷
		QueryRunner runner = new QueryRunner();

		String sql1 = "Select * from user where username=? and password=?";

		List<User> users;
		try {
			users = runner.query(conn, sql1, new BeanListHandler<User>(User.class), username, password);

			DbUtils.closeQuietly(conn);

			if (users.size() > 0)
				return users.get(0);
			else
				return null;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}

	// 锟斤拷取锟斤拷锟斤拷锟矫伙拷锟斤拷锟斤拷锟斤拷
	public static List<User> getAllUser() {

		// 锟斤拷取锟斤拷锟捷匡拷锟斤拷锟斤拷
		Connection conn = UserService.getConnect();

		// QueryRunner DbUtils锟斤拷锟斤拷锟斤拷
		QueryRunner runner = new QueryRunner();

		String sql1 = "Select * from user";

		List<User> users = new ArrayList<>();

		try {
			// 锟斤拷询锟斤拷锟叫碉拷锟矫伙拷锟斤拷锟捷ｏ拷锟斤拷锟斤拷锟斤拷锟絃ist<User>
			users = runner.query(conn, sql1, new BeanListHandler<User>(User.class));

			DbUtils.closeQuietly(conn);

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return users;
	}

	// 模锟斤拷锟斤拷询锟矫伙拷锟斤拷锟斤拷锟斤拷
	public static List<User> queryUsers(String key) {

		// 锟斤拷取锟斤拷锟捷匡拷锟斤拷锟斤拷
		Connection conn = UserService.getConnect();

		// QueryRunner DbUtils锟斤拷锟斤拷锟斤拷
		QueryRunner runner = new QueryRunner();

		key = "%" + key + "%";

		String sql1 = "Select * from user where username like ? or job like ?";

		List<User> users = new ArrayList<>();

		try {
			// 锟斤拷询锟斤拷锟叫碉拷锟矫伙拷锟斤拷锟捷ｏ拷锟斤拷锟斤拷锟斤拷锟絃ist<User>
			users = runner.query(conn, sql1, new BeanListHandler<User>(User.class), key, key);

			DbUtils.closeQuietly(conn);

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return users;
	}

	// 锟斤拷锟斤拷id锟斤拷取锟矫伙拷
	public static User getUserById(int id) {

		Connection conn = UserService.getConnect();

		// QueryRunner DbUtils锟斤拷锟斤拷锟斤拷
		QueryRunner runner = new QueryRunner();

		String sql1 = "Select * from user where id = ?";

		List<User> users;
		try {
			users = runner.query(conn, sql1, new BeanListHandler<User>(User.class), id);

			DbUtils.closeQuietly(conn);

			if (users.size() > 0)
				return users.get(0);
			else
				return null;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}

}
