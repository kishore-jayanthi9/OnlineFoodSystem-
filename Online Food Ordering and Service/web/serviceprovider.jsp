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
        <script>alert('Your Order Sent Successfully');</script>
        <%}
            if (request.getParameter("msg1") != null) {%>
        <script>alert('Login Failed Username/Password Wrong');</script> 
        
        <%}
        %>
<div id="shell">
  <div id="header">
      <h1 id="logo"><a href="#">Online Food Ordering and Service</a></h1>
   
  </div>
  <div id="navigation">
    <ul>
      <li><a href="index.html">HOME</a></li>      
      <li><a href="admin.jsp">Admin</a></li>
      <li><a href="serviceprovider.jsp">Service Provider</a></li>  
      <li><a href="user.jsp">User</a></li>
    </ul>
    <div class="search">
      
    </div>
  </div>

    <br><br><br><br><br>
    <center>
	<h2  style="color: #0b6c81">Service Provider Login</h2>
        <br>
    <hr>
          <br>
          <form action="serviceprovideract.jsp" method="post" id="leavereply">
              <table>           
                        <tr>
                        <th><font color="black" size="4">Username :</th>
                        <th><input type="text" placeholder="Enter Username" name="name" required></th>
                        </tr>

                        <tr><th><font color="black" size="4">Password :</th>
                        <th><input type="password" placeholder="Enter Password" name="pass" required></th>
                        </tr> 
                  
                        <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
                  
                        <td>
                    <input type="submit" value="Login"  style="height:30px; width:65px" />
                  <button type="button" class="cancelbtn" style="height:30px; width:65px" >Cancel</button>
                 
                
              </td>
              </table>
              </form>
    </center>
        
    <br><br>
        <hr>
          
  <div class="footer">
    <div style="clear:both;"></div>
  </div>
</div>
<!-- END PAGE SOURCE -->

</html>