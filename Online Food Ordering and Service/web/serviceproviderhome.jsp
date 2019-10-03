<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Online Food Ordering and Service</title>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery-fns.js"></script>

</head>
<body>
    <%
            if (request.getParameter("msg") != null) {%>
        <script>alert('Login Success');</script>
        <%}
            if (request.getParameter("m2") != null) {%>
        <script>alert('Login Failed Username/Password Wrong');</script> 
        
        <%}
        %>
<div id="shell">
  <div id="header">
      <center><h1 id="logo"><a href="#">Online Food Ordering and Service</a></h1></center>
   
  </div>
  <div id="navigation">
    <ul>
      <li><a href="serviceproviderhome.jsp">HOME</a></li>      
      <li><a href="additems.jsp">Add Food Item</a></li>  
       <li><a href="spvieworders.jsp">View Orders</a></li> 
      <li><a href="index.html">Logout</a></li>
     </ul>
    <div class="search">
      
    </div>
  </div>
    <br><br>
     <div id="main">
    <div id="featured">
      <div class="post-image"> 
          <a href="#"><img src="css/images/1.png" alt="" height="260" width="900"/></a></div>
      
      <div class="cl">&nbsp;</div>
    </div>
   
  </div>

     <center>   
           <%
        String user = session.getAttribute("username").toString();
        %>
        <br/><br/><br/>
        <center><p><font color="black" size="5"> Welcome <%=user%></font></p></center>   
  <div class="footer">
    <div style="clear:both;"></div>
  </div>
</div>
<!-- END PAGE SOURCE -->
</html>