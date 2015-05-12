package me.yuechuan.database;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DatabaseOperator {
	
	
	private String dbUrl;
	private String query;
	private String username;
	private String password;
	private String dbClass = "com.mysql.jdbc.Driver";
	
	private Connection connection;
	private Statement statement;
	private ResultSet resultSet;
	
	public DatabaseOperator(String dbUrl, String username, String password)
	{
		this.dbUrl = dbUrl;
		this.username = username;
		this.password = password;
		
		try {
			Class.forName(dbClass);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	

	public boolean connect()
	{
		try {
			connection = DriverManager.getConnection(dbUrl, username, password);
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	public boolean close()
	{
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	public void showData()
	{
        try {
        	query = "Select * from test.s";
        	
        	statement = connection.createStatement();
            resultSet = statement.executeQuery(query);
			while (resultSet.next()) {
				String tableName = resultSet.getString(1);
				System.out.println("Table name : " + tableName);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
