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
            if (request.getParameter("message") != null) {%>
        <script>alert('Order Conformed Merssage Sent to User Mail');</script>
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
    
    <br><br><br><br><br>
     <center>   
            <h1> View Food Items</h1>  <br>

<% 

try{ 
	Connection con = null;
        con = Dbconnection.getConnection();
        PreparedStatement pst=con.prepareStatement("select * from orders where statuss='Forward'");
        ResultSet rs=pst.executeQuery();
        %>
        
        <center>   <table style="width:80%" border="2"></center>
         
        <tr style="color: red">
        <th >Item Id</th>
        <th>Item Name</th>
        <th>Quantity</th>
        <th>Price</th>
        <th>Student Id</th>
        <th>Restaurant</th>
        <th>Conform</th>
       
     
 </tr>
<body  bgcolor="">;
<%
       
	while(rs.next()){
            %><tr style="color: black"><td><%=rs.getString(1)%></td>
                <th><%=rs.getString(2)%></th>                
                <th><%=rs.getString(3)%></th>
                <th><%=rs.getString(4)%></th>
                <th><%=rs.getString(10)%></th>
                <th><%=rs.getString(11)%></th>
                <td><a href="spvieworders1.jsp?id=<%=rs.getString("id")%>&name=<%=rs.getString("name")%>&quan=<%=rs.getString("quan")%>&total=<%=rs.getString("total")%>&user=<%=rs.getString("user")%>&sid=<%=rs.getString("sid")%>&restaurant=<%=rs.getString(11)%>"><font color="#0d637d" size="3">Conform</font></a> </td>
      
            
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