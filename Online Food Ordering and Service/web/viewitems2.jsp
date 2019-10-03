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
    
 
     <center>   
             <br>

<% 
            int j=0;
String restaurant=request.getParameter("restaurant");           
String id = request.getParameter("id");
String name = request.getParameter("name");
String price = request.getParameter("price");
String quan = request.getParameter("quan");
String total = request.getParameter("total");

	int i=Integer.parseInt(request.getParameter("price"));
        int k=Integer.parseInt(request.getParameter("quan"));
        j= i*k;
        
        %>
        
    
 
  
  <br> <br> <br> <br> <br>
    <center>
	<h2  style="color: #0b6c81">Enter Card Details</h2>
        <br>
    <hr>
           <form name="f" action="viewitems3.jsp" method="post" >  <center>
<table>
   
    
       <tr>
              <th><font color="black" size="4">Restaurant Name: </th>
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
              <th><font color="black" size="4">Quantity :</th>
              <th><input type="text" name="quan" value="<%=quan%>" style="height:30px; width:170px"></input>
              </th>
        </tr>
    
      
         <tr>
              <th><font color="black" size="4">Total Cost :</th>
              <th><input type="text" name="total" value="<%=j%>" style="height:30px; width:170px"></input>
              </th>
        </tr>
   
     
      <tr>  
               <th><font color="black" size="4">Payment Mode: </th>
               <th><select id="s1" name="type" required style="width: 175px;" class="text">
                <option value="">--Select--</option>
                <option value="card">Card</option>
                <option value="Cash on Delivery">Cash on Delivery</option>
                
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
        
    
        <hr>
  
  
  
  
  
  
  
                 </form>
     </center>
  <div class="footer">
    <div style="clear:both;"></div>
  </div>
</div>
<!-- END PAGE SOURCE -->
</html>