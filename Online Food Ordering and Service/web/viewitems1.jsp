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
            if (request.getParameter("m1") != null) {%>
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
      <li><a href="userhome.jsp">HOME</a></li>      
     <li><a href="viewrestaurants.jsp">View Restaurants</a></li>
     <li><a href="index.html">Logout</a></li>
    
    </ul>
    <div class="search">
      
    </div>
  </div>
    
    <br><br><br><br><br>
     <center>   
            <br>

<% 
String id = request.getParameter("id");
String name = request.getParameter("name");
String price = request.getParameter("price");
String restaurant=request.getParameter("restaurant");
	Connection con = null;
        con = Dbconnection.getConnection();
        PreparedStatement pst=con.prepareStatement("select * from items");
        ResultSet rs=pst.executeQuery();
        %>
        
  
   <center>
	<h2  style="color: #0b6c81">Order Food Items</h2>
        <br>
    <hr>
           <form name="f" action="viewitems2.jsp" method="post" >  <center>
<table>
   
    
     <tr>
            <th><font color="black" size="4">Restaurant :</th>
              <th><input type="text" name="restaurant" value="<%=restaurant%>"  style="height:30px; width:170px"></input>
              </th>
        </tr>
    
    
        <tr>
            <th><font color="black" size="4">Item Id :</th>
              <th><input type="text" name="id" value="<%=id%>"  style="height:30px; width:170px"></input>
              </th>
        </tr>

        <tr>
              <th><font color="black" size="4">Item Name: </th>
              <th><input type="text" name="name" value="<%=name%>"  style="height:30px; width:170px"></input>
              </th>
        </tr>
    
    
    
       <tr>
              <th><font color="black" size="4">Price :</th>
              <th><input type="text" name="price" value="<%=price%>" style="height:30px; width:170px"></input>
              </th>
        </tr>
    
      <tr>  
               <th><font color="black" size="4">Quantity: </th>
               <th><select id="s1" name="quan" required style="width: 175px;" class="text">
                <option value="">--Select--</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
             </select></th>
         
          </tr>
    
          <tr></tr>
	  <tr></tr>
	  <tr></tr>
          <br>
	  <tr>
              <td>
                    <input type="submit" value="submit"  style="height:30px; width:65px" />
               
              </td>
                        </tr>
 
              <tr></tr>
              <tr></tr><tr></tr><tr></tr><tr></tr>
		<tr>
		<td>
		 </td>
		<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		
                
		</td>
		</tr>
	</table>
                    </center>
     </form>
  
  
  
  
  
  
  
  
  
  <div class="footer">
    <div style="clear:both;"></div>
  </div>
</div>
<!-- END PAGE SOURCE -->
</html>