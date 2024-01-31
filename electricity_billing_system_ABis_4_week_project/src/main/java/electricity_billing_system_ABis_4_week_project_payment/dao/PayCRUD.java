package electricity_billing_system_ABis_4_week_project_payment.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import electricity_billing_system_ABis_4_week_project_payment.dto.Pay;

public class PayCRUD {
	public Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/electricity_billing_system_abis_4_week_project","root","root");
		return connection;
	}
	public int savePayDetails(Pay pay) throws SQLException, ClassNotFoundException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("insert into pay values(?,?,?,?,?,?)");
		preparedStatement.setInt(1, pay.getMitterno());
		preparedStatement.setString(2, pay.getName());
		preparedStatement.setString(3, pay.getMonth());
		preparedStatement.setInt(4, pay.getUnits());
		preparedStatement.setInt(5, pay.getTotal());
		preparedStatement.setString(6, pay.getStatus());
		
		int count=preparedStatement.executeUpdate();
		return count;
	}
	public List<Pay> displayAll() throws SQLException, ClassNotFoundException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("select * from pay");
		ResultSet resultSet=preparedStatement.executeQuery();
		List<Pay>pays = new ArrayList<Pay>();
		
		while(resultSet.next()) {
			Pay pay = new Pay();
			pay.setMitterno(resultSet.getInt(1));
			pay.setName(resultSet.getString(2));
			pay.setMonth(resultSet.getString(3));
			pay.setUnits(resultSet.getInt(4));
			pay.setTotal(resultSet.getInt(5));
			pay.setStatus(resultSet.getString(6));
			
			pays.add(pay);
		}
		return pays;
	}
	public List<Pay> displayPay(int mitterno,String month) throws SQLException, ClassNotFoundException{
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("select * from pay where mitterno = ? and month = ?");
		preparedStatement.setInt(1, mitterno);
		preparedStatement.setString(2, month);
		
		ResultSet resultSet=preparedStatement.executeQuery();
		List<Pay> pays = new ArrayList<Pay>();
		while(resultSet.next()) {
			Pay pay = new Pay();
			pay.setMitterno(resultSet.getInt(1));
			pay.setName(resultSet.getString(2));
			pay.setMonth(resultSet.getString(3));
			pay.setUnits(resultSet.getInt(4));
			pay.setTotal(resultSet.getInt(5));
			pay.setStatus(resultSet.getString(6));
			
			pays.add(pay);
		}
		return pays;
	}
	public String displayName(int mitterno,String month) throws ClassNotFoundException, SQLException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("select * from pay where mitterno = ? and month = ?;");
		preparedStatement.setInt(1, mitterno);
		preparedStatement.setString(2, month);
		ResultSet resultSet=preparedStatement.executeQuery();
		String name = " ";
		while(resultSet.next()) {
			
			name = resultSet.getString("name");
		}
		return name;
	}
	public int displayUnits(int mitterno ,String month) throws SQLException, ClassNotFoundException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("select * from pay where mitterno = ? and month = ?");
		preparedStatement.setInt(1, mitterno);
		preparedStatement.setString(2, month);
		ResultSet resultSet=preparedStatement.executeQuery();
		int units = 0;
		while(resultSet.next()) {
			units = resultSet.getInt("units");
		}
		return units;
	}
	public int displayTotal(int mitterno,String month) throws ClassNotFoundException, SQLException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("select * from pay where mitterno = ? and month = ?");
		preparedStatement.setInt(1, mitterno);
		preparedStatement.setString(2, month);
		ResultSet resultSet=preparedStatement.executeQuery();
		int totals = 0;
		while(resultSet.next()) {
			totals = resultSet.getInt("total");
		}
		return totals;
	}
	public String displayStatus(int mitterno,String month) throws ClassNotFoundException, SQLException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("select * from pay where mitterno = ? and month = ?");
		preparedStatement.setInt(1, mitterno);
		preparedStatement.setString(2, month);
		ResultSet resultSet=preparedStatement.executeQuery();
		String status = null;
		while(resultSet.next()) {
			status = resultSet.getString("status");
		}
		return status;
	}
	public int updatePay(String sts,int mitterno,String month) throws ClassNotFoundException, SQLException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("update pay set status = ? where mitterno = ? and month = ?");
		preparedStatement.setString(1, sts);
		preparedStatement.setInt(2, mitterno);
		preparedStatement.setString(3, month);
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
