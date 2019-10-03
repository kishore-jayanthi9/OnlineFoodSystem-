<%@page import="java.sql.*"%>
<%@page import="onlinefood.Dbconnection"%>
<%@ page session="true" %>
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
      <li><a href="userhome.jsp">HOME</a></li>      
      <li><a href="viewrestaurants.jsp">View Restaurants</a></li>  
     <li><a href="index.html">Logout</a></li>
    
    </ul>
    <div class="search">
      
    </div>
  </div>
    
    <br><br><br><br><br>
     <center>   
            <h1> View Restaurants</h1>  <br>

<% 

try{ 
	Connection con = null;
        con = Dbconnection.getConnection();
        PreparedStatement pst=con.prepareStatement("select * from items");
        ResultSet rs=pst.executeQuery();
        %>
        
        <center>   <table style="width:80%" border="2"></center>
         
        <tr style="color: red">
        <th>Restaurant Name</th>
      
       
     
 </tr>
<body  bgcolor="">
<%
       
	while(rs.next()){
            %><tr style="color: black">
                <th><a href="viewrestaurants1.jsp?restaurant=<%=rs.getString(4)%>"><font color="black"><%=rs.getString(4)%></a></th>
            
        </tr>
      <%  }
        
        %> </table>

<% }
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>
            
     
      
     </center>
  <div class="footer">
    <div style="clear:both;"></div>
  </div>
</div>
<!-- END PAGE SOURCE -->
</html>