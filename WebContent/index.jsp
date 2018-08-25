<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="header.jsp"></jsp:include>
        <title>Rites</title>
    </head>
    <body>
    <%
String username=(String)session.getAttribute("username");
if(username!=null){
%>
<jsp:forward page="landing.jsp"></jsp:forward>
<%
}
%>
        <div id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
                <div class="pageContentWrapper">
                <jsp:include page="navbar.jsp"></jsp:include>
                <div class="jumbotron text-center">
                  <h1>Rites</h1> 
                  <p>A Trusted Partner In Bussiness Across The Globe</p> 
                  
                </div>
                
                <!-- Container (About Section) -->
                <div id="about" class="container-fluid">
                  <div class="row">
                    <div class="col-sm-8">
                      <h2>About Company Page</h2><br>
                      <h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</h4><br>
                      <br><button class="btn btn-default btn-lg">Get in Touch</button>
                    </div>
                    <div class="col-sm-4">
                      <span class="glyphicon glyphicon-signal logo"></span>
                    </div>
                  </div>
                </div>
                
                <div class="container-fluid bg-grey">
                  <div class="row">
                    <div class="col-sm-4">
                      <span class="glyphicon glyphicon-globe logo slideanim"></span>
                    </div>
                    <div class="col-sm-8">
                      <h2>Our Values</h2><br>
                      <h4><strong>MISSION:</strong> Our mission lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</h4><br>
                      
                    </div>
                  </div>
                </div>





                <!-- Container (Contact Section) -->
        <div id="contact" class="container-fluid bg-grey">
        <h2 class="text-center">CONTACT</h2>
        <div class="row">
          <div class="col-sm-5">
            <p>Contact us and we'll get back to you within 24 hours.</p>
            <p><span class="glyphicon glyphicon-map-marker"></span> Gurugram, India</p>
            <p><span class="glyphicon glyphicon-phone"></span> +91 9999555555</p>
            <p><span class="glyphicon glyphicon-envelope"></span> myemail@something.com</p>
          </div>
          <div class="col-sm-7 slideanim">
            <div class="row">
              <div class="col-sm-6 form-group">
                <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
              </div>
              <div class="col-sm-6 form-group">
                <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
              </div>
            </div>
            <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
            <div class="row">
              <div class="col-sm-12 form-group">
                <button class="btn btn-default pull-right" type="submit">Send</button>
              </div>
            </div>
          </div>
        </div>
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