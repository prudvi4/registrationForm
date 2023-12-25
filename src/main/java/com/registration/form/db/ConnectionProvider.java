package com.registration.form.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public final class ConnectionProvider {

	public static Connection getConnection() throws ClassNotFoundException {
		Connection connection = null;
		String dbUrl = "jdbc:mysql://127.0.0.1:3306/?user=excelr";
		String user = "excelr";
		String password = "excelr@123";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection(dbUrl, user, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return connection;
	}
}
