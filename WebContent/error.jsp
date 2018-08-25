<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="header.jsp"></jsp:include>
        <title>Rites - Error</title>
    </head>
    <body>
        <div id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
                <div class="pageContentWrapper">
                <jsp:include page="navbar.jsp"></jsp:include>
                <div class="container-fluid main">
                    
                    <h1>Error Occured!!</h1>
                    <%
					if(request.getAttribute("msg")!=null){
					String msg=(String)request.getAttribute("msg");
					out.print("<p>"+msg+"</p>");
					}
                    
					%>
					   
                    
                    
                </div>
                </div>
                
                 <!-- Modals -->
    <div class="modal fade" id="signup-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
            <div class="modal-dialog">
                  <div class="loginmodal-container">
                      <h1>Create a new account</h1><br>
                    <form action="signup" method="post">
                      <input type="text" name="name" placeholder="Name">
                      <input type="text" name="username" placeholder="Username">
                      <input type="password" name="password" placeholder="Password">
                      <input type="submit" name="login" class="login loginmodal-submit" value="Sign-up">
                    </form>
                      
                    <div class="login-help">
                      <a href="#">Already have an account, login.</a>
                    </div>
                  </div>
              </div>
            </div>



    <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
            <div class="modal-dialog">
                  <div class="loginmodal-container">
                      <h1>Login to Your Account</h1><br>
                    <form action="login" method="post">
                      <input type="text" name="username" placeholder="Username">
                      <input type="password" name="password" placeholder="Password">
                      <input type="submit" name="login" class="login loginmodal-submit" value="Login">
                    </form>
                      
                    <div class="login-help">
                      <a href="#">Don't have an account. Register now</a>
                    </div>
                  </div>
              </div>
            </div>
                
                <jsp:include page="footer.jsp"></jsp:include>
               </div>
        </body>
        </html>