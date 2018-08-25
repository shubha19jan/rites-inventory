<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="header.jsp"></jsp:include>
        <title>Dashboard</title>
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
                    
                    
                    <h2>Welcome, admin</h2>
                    
                     
                            <a href="addinventory.jsp"><button type="button" class="btn btn-lg">Add new Stock</button></a>
                    
                    <br>
                     <br>    
                    <a href="listinventory.jsp"><button type="button" class="btn btn-lg">List All Stock</button></a>
                    <br>
                    <br>
                    
                        
                        <a href=""><button type="button" class="btn btn-lg">Register an employee</button></a>
                    
              
                    
                    
                </div>
                </div>
                <jsp:include page="footer.jsp"></jsp:include>
               </div>
        </body>
        </html>