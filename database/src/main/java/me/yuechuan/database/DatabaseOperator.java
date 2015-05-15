package me.yuechuan.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.swing.JOptionPane;

public class DatabaseOperator 
{
	private String dbUrl;
	private String query;
	private String username;
	private String password;
	private String dbClass = "com.mysql.jdbc.Driver";
	
	private Connection connection;
	private Statement statement;
	
	
	public DatabaseOperator()
	{
		try {
			Class.forName(dbClass);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public boolean connect(String dbUrl, String username, String password)
	{
		try {
			connection = DriverManager.getConnection(dbUrl, username, password);
			this.dbUrl = dbUrl;
			this.username = username;
			this.password = password;
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
	
	public boolean addNewBook(	String title_id,
								String title,
								String type,
								String pub_id,
								String author,
								String price,
								String advance,
								String royalty,
								String ytd_sales,
								String notes,
								String pub_date)
	{
        try {
        	query = "insert into titles value(\""
        			+ title_id + "\",\""
        			+ title + "\",\"" 
        			+ type	+ "\",\""
        			+ pub_id + "\",\""
        			+ price + "\",\""
        			+ advance + "\",\""
        			+ royalty + "\",\""
        			+ ytd_sales +"\",\""
        			+ notes + "\",\""
        			+ pub_date + "\");";
        	
        	System.out.println(query);
        	
        	statement = connection.createStatement();
            statement.executeUpdate(query);
			
            return true;
		} catch (SQLException e) {
			JOptionPane.showConfirmDialog(null, e.getMessage(), "Warning", JOptionPane.ERROR_MESSAGE);
			e.printStackTrace();
			return false;
		} 
	}
	
	public ResultSet bookShow()
	{
		ResultSet resultSet;
        try {
        	query = "Select * from titles";
        	
        	statement = connection.createStatement();
            resultSet = statement.executeQuery(query);
			
            return resultSet;
		} catch (SQLException e) {
			JOptionPane.showConfirmDialog(null, e.getMessage(), "Warning", JOptionPane.ERROR_MESSAGE);
			e.printStackTrace();
			return null;
		} 
	}
	
	public ResultSet bookNameSearch(String bookName)
	{
		ResultSet resultSet;
        try {
        	query = "Select * from titles where title like \"%" + bookName + "%\"";
        	
        	statement = connection.createStatement();
            resultSet = statement.executeQuery(query);
			
            return resultSet;
		} catch (SQLException e) {
			JOptionPane.showConfirmDialog(null, e.getMessage(), "Warning", JOptionPane.ERROR_MESSAGE);
			e.printStackTrace();
			return null;
		} 
	}
	
	public ResultSet bookISBNSearch(String isbn)
	{
		ResultSet resultSet;
        try {
        	query = "Select * from titles where title_id like \"%" + isbn + "%\"";
        	
        	statement = connection.createStatement();
            resultSet = statement.executeQuery(query);
			
            return resultSet;
		} catch (SQLException e) {
			JOptionPane.showConfirmDialog(null, e.getMessage(), "Warning", JOptionPane.ERROR_MESSAGE);
			e.printStackTrace();
			return null;
		} 
	}
	
	public ResultSet bookISBNandNameSearch(String isbn, String name)
	{
		ResultSet resultSet;
        try {
        	query = "Select * from titles where title_id like \"%" + isbn + "%\" and title like \"%" + name + "%\"";
        	
        	statement = connection.createStatement();
            resultSet = statement.executeQuery(query);
			
            return resultSet;
		} catch (SQLException e) {
			JOptionPane.showConfirmDialog(null, e.getMessage(), "Warning", JOptionPane.ERROR_MESSAGE);
			e.printStackTrace();
			return null;
		} 
	}
	
	public ResultSet getData()
	{
		ResultSet resultSet;
        try {
        	query = "Select * from employee";
        	
        	statement = connection.createStatement();
            resultSet = statement.executeQuery(query);
			
            return resultSet;
		} catch (SQLException e) {
			JOptionPane.showConfirmDialog(null, e.getMessage(), "Warning", JOptionPane.ERROR_MESSAGE);
			e.printStackTrace();
			return null;
		} 
	}
	
	
}
