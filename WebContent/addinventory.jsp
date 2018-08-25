<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="header.jsp"></jsp:include>
        <title>Add Inventory</title>
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
                    

                    <h2>Add items to inventory -</h2>
                    
                     <form action="addInventory" method="post">
                        <div class="form-group row">
                          <label class="col-sm-2 col-form-label">Model Number</label>
                          <div class="col-sm-4">
                            <input type="text" class="form-control" id="inputEmail3" name="model_no" placeholder="Model Number">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label class="col-sm-2 col-form-label">Capacity</label>
                          <div class="col-sm-4">
                            <input type="text" class="form-control" name="capacity" placeholder="Capacity">
                          </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label">Quantity</label>
                            <div class="col-sm-4">
                              <input type="text" class="form-control"  name="quantity"placeholder="Quantity">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label class="col-sm-2 col-form-label" for="inputState">Stock Type</label>
                            <div class="col-sm-4">
                            <select name="stock_type" id="inputState" class="form-control">
                              <option value="PD"selected>PD</option>
                              <option value="HD">HD</option>
                            </select>
                            </div>
                          </div>
                        <br>
                        <div class="form-group row">
                          <div class="col-sm-10">
                            <button type="submit" class="btn btn-lg">Add item</button>
                          </div>
                        </div>
                      </form>
                      
                      <br>
                    
              		<%
					if(request.getAttribute("addSuccess")!=null){
					String msg=(String)request.getAttribute("addSuccess");
					out.print("<p>"+msg+"</p>");
					}
                    
					%>
              
                   
                    <a href="landing.jsp"><p>Go back to Dashboard</p></a>
                    
                </div>
                </div>
                <jsp:include page="footer.jsp"></jsp:include>
               </div>
        </body>
        </html>