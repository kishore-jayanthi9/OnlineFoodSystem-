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
<%
    String user = session.getAttribute("username").toString();
    String sid = session.getAttribute("sid").toString();
    String restaurant=request.getParameter("restaurant"); 
    
    int id=Integer.parseInt(request.getParameter("id"));
    String name = request.getParameter("name");
    int quan=Integer.parseInt(request.getParameter("quan"));
    int total=Integer.parseInt(request.getParameter("total"));
    String cno = request.getParameter("cno");
    String ccv = request.getParameter("ccv");
    String type = request.getParameter("type");
    
    String statuss= "Sent";
    
        Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
    
    if(type.equals("Cash on Delivery")){
        
       PreparedStatement ps = con.prepareStatement("insert into orders values(?,?,?,?,?,?,?,?,?,?,?)");
        ps.setInt(1,id);
        ps.setString(2,name);    
        ps.setInt(3,quan);
        ps.setInt(4,total);
        ps.setString(5,cno);
        ps.setString(6,ccv);
        ps.setString(7,user);
        ps.setString(8,statuss);
        ps.setString(9,type);
        ps.setString(10,sid);
        ps.setString(11,restaurant);
        ps.executeUpdate();
response.sendRedirect("viewitems.jsp?msg=success");
out.println("Order Request Sent ");  
        
    }
   %>
   
   <br> <br> <br> <br> <br>
    <center>
	<h2  style="color: #0b6c81">Enter Card Details</h2>
        <br>
    <hr>
           <form name="f" action="viewitems4.jsp" method="post" >  <center>
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
              <th><input type="text" name="total" value="<%=total%>" style="height:30px; width:170px"></input>
              </th>
        </tr>
   
       <tr>
              <th><font color="black" size="4">Card Number :</th>
              <th><input type="text" name="cno"  placeholder= CardNumber style="height:30px; width:170px"></input>
              </th>
        </tr>
    
       <tr>
              <th><font color="black" size="4">CVV :</th>
              <th><input type="text" name="ccv" placeholder= CVV style="height:30px; width:170px"></input>
              </th>
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
   
   
