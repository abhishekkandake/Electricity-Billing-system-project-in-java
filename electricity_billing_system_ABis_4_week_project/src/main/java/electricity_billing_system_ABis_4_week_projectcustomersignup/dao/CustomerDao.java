package electricity_billing_system_ABis_4_week_projectcustomersignup.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import electricity_billing_system_ABis_4_week_projectcustomersignup.dto.Customer;

public class CustomerDao {
	public Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/electricity_billing_system_ABis_4_week_projectdb","root","root");
		return connection;
	}
	public int signupCustomer(Customer customer) throws SQLException, ClassNotFoundException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("insert into customer2 values(?,?,?,?)");
		preparedStatement.setInt(1, customer.getMitterno());
		preparedStatement.setString(2, customer.getName());
		preparedStatement.setString(3, customer.getEmail());
		preparedStatement.setString(4, customer.getPassword());
		
		int count=preparedStatement.executeUpdate();
		if(count!=0) {
			System.out.println("deta is inserted");
		}
		else {
			System.out.println("fail to insert");
		}
		return count;
	}
	public String loginSignup(String email) throws SQLException, ClassNotFoundException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("select * from customer2 where email = ?" );
		preparedStatement.setString(1, email);
		ResultSet resultSet=preparedStatement.executeQuery();
		String password = " ";
		while(resultSet.next()) {
			password = resultSet.getString("password");
		}
		return password;
	}
	public String displayName(int mitterno) throws SQLException, ClassNotFoundException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("select name from customer2 where mitterno = ?");
		preparedStatement.setInt(1, mitterno);
		ResultSet resultSet=preparedStatement.executeQuery();
		String name = " ";
		while(resultSet.next()) {
			name = resultSet.getString("name");
		}
		return name;
	}
	public String displayEmail(int mitterno) throws SQLException, ClassNotFoundException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("select email from customer2 where mitterno = ?");
		preparedStatement.setInt(1, mitterno);
		ResultSet resultSet=preparedStatement.executeQuery();
		String email = " ";
		while(resultSet.next()) {
			email = resultSet.getString("email");
		}
		return email;
	}
	public String displayPassword(int mitterno) throws SQLException, ClassNotFoundException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("select password from customer2 where mitterno = ?");
		preparedStatement.setInt(1, mitterno);
		ResultSet resultSet=preparedStatement.executeQuery();
		String password = " ";
		while(resultSet.next()) {
			password = resultSet.getString("password");
		}
		return password;
	}
	public int updateCustomer(int mitterno, Customer customer) throws SQLException, ClassNotFoundException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("update customer2 set name = ?,email=?,password=? where mitterno = ?");
		preparedStatement.setString(1, customer.getName());
		preparedStatement.setString(2, customer.getEmail());
		preparedStatement.setString(3, customer.getPassword());
		preparedStatement.setInt(4, mitterno);
		int count=preparedStatement.executeUpdate();
		if(count!=0) {
			System.out.println("deta is updated");
		}
		else {
			System.out.println("fail to update");
		}
		return count;
	}
}
