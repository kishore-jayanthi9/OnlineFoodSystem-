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
        <script>alert('Food Item Added Succesfully');</script>
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
<br><br><br><br><br><br><br><br>
    <center>
	<h2  style="color: #0b6c81">Add Food Items</h2>
        <br>
    <hr>
           <form name="f" action="additemsact.jsp" method="post" >  <center>
<table>
   
    
       <tr>  
               <th><font color="black" size="4">Restaurant: </th>
               <th><select id="s1" name="restaurant" required style="width: 175px;" class="text">
                <option value="">--Select--</option>
                <option value="Paradise">Paradise</option>
                <option value="Swagath">Swagath</option>
                <option value="Bawarchi">Bawarchi</option>
                <option value="Subway">Subway</option>
                <option value="Sitara">Sitara</option>
                <option value="Kritunga">Kritunga</option>
                <option value="AbsoluteBarbecue">Absolute Barbecue</option>
             </select></th>
         

   </tr>
    
    
    
        <tr>
            <th><font color="black" size="4">Food Item Name :</th>
              <th><input type="text" name="itemname" id="userName1" placeholder= Name style="height:30px; width:170px"></input>
              </th>
        </tr>

        <tr>
              <th><font color="black" size="4">Price: </th>
              <th><input type="text" name="price" id="password1" placeholder= Password style="height:30px; width:170px"></input>
              </th>
        </tr>
    
     <br>
    
            <tr>
              <td>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <input type="submit" value="Submit"  style="height:30px; width:65px" />
              
              </td>
              </tr>
    
       
   
          <tr></tr>
	  <tr></tr>
	  <tr></tr>
          <br>
	  
 
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
    
  <div class="footer">
    <div style="clear:both;"></div>
  </div>
</div>
<!-- END PAGE SOURCE -->
</html>