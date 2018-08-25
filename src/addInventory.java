

import java.io.IOException;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


@WebServlet("/addInventory")
public class addInventory extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.sendRedirect("/addinventory.jsp");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		String model_no = request.getParameter("model_no");    
	    String capacity = request.getParameter("capacity");
	    String quantity = request.getParameter("quantity");
	    String stock_type = request.getParameter("stock_type");
	    System.out.println("----------------- "+capacity);
	    if(model_no == "" || capacity=="" || quantity == "" || stock_type == "") {
	    	request.setAttribute("msg", "You need to provide all the details");
	    	request.getRequestDispatcher("error.jsp").forward(request, response);
	    }
	    Class.forName("com.mysql.jdbc.Driver");
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory",
	            "root", "password");
	    Statement st = con.createStatement();
	    //ResultSet rs;
	    int i = st.executeUpdate("insert into stock(model_no, stock_type, capacity, quantity, date) values ('" + model_no + "','" + stock_type + "','" + capacity + "','" + quantity + "', CURDATE())");
	    if (i > 0) {
	    	request.setAttribute("addSuccess", "Successfully added");
	    	request.getRequestDispatcher("addinventory.jsp").forward(request, response);
	        //response.sendRedirect("addinventory.jsp");
	    } else {
	    	request.setAttribute("msg", "Could not add item to inventory.");
	    	request.getRequestDispatcher("error.jsp").forward(request, response);
	    }
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}

}
