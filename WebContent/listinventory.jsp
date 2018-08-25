<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="header.jsp"></jsp:include>
        <title>List Inventory</title>
    </head>
    <body>
    <%
String username=(String)session.getAttribute("username");
if(username==null){
request.setAttribute("notlogin_msg","Sorry,Please do Login first");
%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
}
%>

        <div id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
                <div class="pageContentWrapper">
                <jsp:include page="navbar.jsp"></jsp:include>
                <div class="container-fluid main">
                    <h2>List of all Inventory</h2>
                    
                    <table class="table table-striped">
					  <thead>
					    <tr>
					      <th scope="col">Sl No.</th>
					      <th scope="col">Date</th>
					      <th scope="col">Model No.</th>
					      <th scope="col">Stock type</th>
					      <th scope="col">Capacity</th>
					      <th scope="col">Quantity</th>
					      <th scope="col">Delete</th>
					    </tr>
					  </thead>
					  <tbody>
					  	<%
	try{
		Class.forName("com.mysql.jdbc.Driver");
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory",
	            "root", "password");
	    String delId=request.getParameter("delId");
	   
	    if(delId != null){
	    	PreparedStatement pss=con.prepareStatement("delete from stock where id ='"+delId+"'");
	    	pss.executeUpdate();
	    }
	    
	    PreparedStatement ps=con.prepareStatement("select * from stock");
	    ResultSet rs=ps.executeQuery();
	    int count=1;
	    while(rs.next()){
	    %>
	    			<tr>
	    				<th scope="row"><%=count++%></th>
					      <th><%=rs.getDate("date")%></th>
					      <td><%=rs.getString("model_no")%></td>
					      <td><%=rs.getString("stock_type")%></td>
					      <td><%=rs.getString("capacity")%></td>
					      <td><%=rs.getString("quantity")%></td>
					      <td><a href="listinventory.jsp?delId=<%=rs.getInt("id") %>"><span style="color: #f4511e;"class="glyphicon glyphicon-trash delete"></span></a></td>
					</tr>
	    <% 
	    }

	}
	catch(Exception e){
		e.printStackTrace();
	}
%>
					   
					  </tbody>
					</table>
              		<br>
                    <a href="landing.jsp"><p>Go back to Dashboard</p></a>
                    
                </div>
                </div>
                <jsp:include page="footer.jsp"></jsp:include>
               </div>
        </body>
        </html>