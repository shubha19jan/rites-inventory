

import java.io.IOException;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


@WebServlet("/signup")
public class signup extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.sendRedirect("/index.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		String name = request.getParameter("name");
		String username = request.getParameter("username");    
	    String pwd = request.getParameter("password");
	    if(name == null || username == null || pwd==null ) {
	    	request.setAttribute("msg", "All fields are mandatory. Please provide all.");
	    	request.getRequestDispatcher("error.jsp").forward(request, response);
	    }
	    Class.forName("com.mysql.jdbc.Driver");
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory", "root", "password");
	    Statement st = con.createStatement();
	    ResultSet rs;
	    rs = st.executeQuery("select * from users where username='" + username + "'");
	    if (rs.next()) {
	    	request.setAttribute("msg", "Username already taken. Please try with different username");
	    	request.getRequestDispatcher("error.jsp").forward(request, response);
	    } else {
	    	
	    	int i = st.executeUpdate("insert into users(name, username, password) values ('" + name + "','" + username + "','" + pwd + "')");
	    	if(i>0) {
	    		
	    		HttpSession session = request.getSession();
		        session.setAttribute("username", username);
		        response.sendRedirect("landing.jsp");
	    	}
	    	else {
	    		request.setAttribute("msg", "Error while sigining in. Please try again.");
		    	request.getRequestDispatcher("error.jsp").forward(request, response);
	    	}
	    }
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}

}
