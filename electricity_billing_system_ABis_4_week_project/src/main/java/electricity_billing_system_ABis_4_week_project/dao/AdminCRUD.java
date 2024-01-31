package electricity_billing_system_ABis_4_week_project.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import electricity_billing_system_ABis_4_week_project.dto.Admin;

public class AdminCRUD {
	public Connection getConnection() throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/electricity_billing_system_ABis_4_week_projectdb","root","root");
		return connection;
	}
	public int signupAdmin(Admin admin) throws SQLException, ClassNotFoundException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("insert into admin values(?,?,?,?,?,?)");
		preparedStatement.setString(1, admin.getName());
		preparedStatement.setLong(2, admin.getPhone());
		preparedStatement.setString(3, admin.getAddress());
		preparedStatement.setString(4, admin.getEmail());
		preparedStatement.setString(5, admin.getPassword());
		preparedStatement.setString(6, admin.getGender());
		int count=preparedStatement.executeUpdate();
		if(count!=0) {
			System.out.println("deta is inserted");
		}
		else {
			System.out.println("fail to insert");
		}
		connection.close();
		return count;
	}
	public String adminLogin(String email) throws SQLException, ClassNotFoundException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("select * from admin where email = ?");
		preparedStatement.setString(1, email);
		ResultSet resultSet=preparedStatement.executeQuery();
		String password = " ";
		while (resultSet.next()) {
			password = resultSet.getString("password");
		}
		return password;
	}
	public Boolean logout() throws SQLException, ClassNotFoundException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("truncate table admin");
		Boolean count=preparedStatement.execute();
		if(count!=false) {
			System.out.println("log out sucessfull");
		}
		return false;
	}
}
