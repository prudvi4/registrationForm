package com.registration.form.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.registration.form.dao.RegisterDAO;
import com.registration.form.db.ConnectionProvider;
import com.registration.form.entity.Registration;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String fname = req.getParameter("fname");
			String email = req.getParameter("email");
			String dob = req.getParameter("dob");
			String address = req.getParameter("address");
			String phno = req.getParameter("phno");
			String gender = req.getParameter("gender");
			String password = req.getParameter("password");

			System.out.println(
					fname + " " + email + " " + dob + " " + address + " " + phno + " " + gender + " " + password);

			Registration rt = new Registration();
			rt.setName(fname);
			rt.setEmail(email);
			rt.setDob(dob);
			rt.setAdress(address);
			rt.setPhno(phno);
			rt.setGender(gender);
			rt.setPassword(password);

			RegisterDAO dao = new RegisterDAO(ConnectionProvider.getConnection());
			boolean f = dao.RegisterForm(rt);
			HttpSession session = req.getSession();
			if (f) {
				session.setAttribute("SuccessMsg", "Registration Success.....");
				resp.sendRedirect("index.jsp");
			} else {
				session.setAttribute("ErrorMsg", "Registration Failed!!!!!!");
				resp.sendRedirect("index.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
