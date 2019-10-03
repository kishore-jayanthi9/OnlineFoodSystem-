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
    <br> <br> <br> <br> <br>
    <center>
	<h2  style="color: #0b6c81">User Registration</h2>
        <br>
    <hr>
           <form name="f" action="userregact.jsp" method="post" >  <center>
<table>
    
       <tr>
            <th><font color="black" size="4">Student Id :</th>
              <th><input type="text" name="sid"  placeholder= "Student Id" style="height:30px; width:170px"></input>
              </th>
        </tr>
    
   
        <tr>
            <th><font color="black" size="4">Username :</th>
              <th><input type="text" name="username"  placeholder= Username style="height:30px; width:170px"></input>
              </th>
        </tr>

        <tr>
              <th><font color="black" size="4">Password: </th>
              <th><input type="password" name="password1"  placeholder= Password style="height:30px; width:170px"></input>
              </th>
        </tr>
    
    
      <tr>  
               <th><font color="black" size="4">Gender: </th>
               <th><select id="s1" name="gen" required style="width: 175px;" class="text">
                <option value="">--Select--</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
             </select></th>
         
          </tr>
    
    
       <tr>
              <th><font color="black" size="4">Date of Birth :</th>
              <th><input type="date" name="dt"  placeholder= DOB style="height:30px; width:170px"></input>
              </th>
        </tr>
    
      
         <tr>
              <th><font color="black" size="4">Mobile No :</th>
              <th><input type="text" name="mobile"  placeholder= MobileNo style="height:30px; width:170px"></input>
              </th>
        </tr>
   
       <tr>
              <th><font color="black" size="4">Email :</th>
              <th><input type="text" name="email"  placeholder= Email style="height:30px; width:170px"></input>
              </th>
        </tr>
    
       <tr>
              <th><font color="black" size="4">Address :</th>
              <th><input type="text" name="address"  placeholder= Address style="height:30px; width:170px"></input>
              </th>
        </tr>
    
         
          <br>
	  <tr>
              <td>
                    <input type="submit" value="Register"  style="height:30px; width:65px" />
                
              </td>
                        </tr>
 
              
		
	</table>
                    </center>
     </form>
        
    
        <hr>
    
  <div class="footer">
    <div style="clear:both;"></div>
  </div>
</div>
<!-- END PAGE SOURCE -->
</body>
</html>