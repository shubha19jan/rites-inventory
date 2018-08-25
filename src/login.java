

import java.io.IOException;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


@WebServlet("/login")
public class login extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.sendRedirect("/index.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		String username = request.getParameter("username");    
	    String pwd = request.getParameter("password");
	    if(username == null || pwd==null) {
	    	request.setAttribute("msg", "You need to provide username and password.");
	    	request.getRequestDispatcher("error.jsp").forward(request, response);
	    }
	    Class.forName("com.mysql.jdbc.Driver");
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory",
	            "root", "password");
	    Statement st = con.createStatement();
	    ResultSet rs;
	    rs = st.executeQuery("select * from users where username='" + username + "' and password='" + pwd + "'");
	    if (rs.next()) {
	    	HttpSession session = request.getSession();
	        session.setAttribute("username", username);
	        response.sendRedirect("landing.jsp");
	    } else {
	    	request.setAttribute("msg", "Username or password incorrect.");
	    	request.getRequestDispatcher("error.jsp").forward(request, response);
	    }
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}

}
