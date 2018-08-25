<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<nav class="navbar navbar-default navbar-fixed-top">
                  <div class="container">
                    <div class="navbar-header">
                      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                      </button>
                      <a class="navbar-brand" href="#myPage">Rites</a>
                    </div>
                    <div class="collapse navbar-collapse" id="myNavbar">
                    <%
                    String username=(String)session.getAttribute("username");
                    if(username==null){%>                    
                      <ul class="nav navbar-nav navbar-right">
                        <li><a href="#about">ABOUT</a></li>
                        <li><a href="#contact">CONTACT</a></li>
                        <li><a href="#" data-toggle="modal" data-target="#signup-modal">REGISTER</a></li>
                        <li><a href="#" data-toggle="modal" data-target="#login-modal" >LOGIN</a></li>
                      </ul>
                      <%}else{ %>
                      <ul class="nav navbar-nav navbar-right">
                        <li style="letter-spacing: 1px"><a href="#">Logged in as <%=username%> </a></li>
                        
                        <li><a href="logout.jsp">LOGOUT</a></li>
                      </ul>
                      <% } %>
                    </div>
                  </div>
                </nav>