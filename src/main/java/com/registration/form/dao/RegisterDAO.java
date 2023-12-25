package com.registration.form.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.registration.form.entity.Registration;

public class RegisterDAO {

	private Connection conn;

	public RegisterDAO(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean RegisterForm(Registration rt) {
		boolean f = false;
		try {
			String SQL_INS_QRY = "INSERT INTO registration_form.register(name,email,dob,address,phno,gender,password) VALUES(?,?,?,?,?,?,?)";
			PreparedStatement psStatement = conn.prepareStatement(SQL_INS_QRY);
			psStatement.setString(1, rt.getName());
			psStatement.setString(2, rt.getEmail());
			psStatement.setString(3, rt.getDob());
			psStatement.setString(4, rt.getAdress());
			psStatement.setString(5, rt.getPhno());
			psStatement.setString(6, rt.getGender());
			psStatement.setString(7, rt.getPassword());

			int i = psStatement.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

}
