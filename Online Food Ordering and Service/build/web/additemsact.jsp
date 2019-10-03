
<%@page import="java.sql.*"%>
<%@page import="onlinefood.Dbconnection"%>
<%@ page session="true" %>
<%
    int id=0;
    String itemname = request.getParameter("itemname");
    String price = request.getParameter("price");
    String restaurant = request.getParameter("restaurant");
   
   
    
    try{
       
       Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
       PreparedStatement ps = con.prepareStatement("insert into items values(?,?,?,?)");
        ps.setInt(1,id);
        ps.setString(2,itemname);    
        ps.setString(3,price);
        ps.setString(4,restaurant);
       
        
       ps.executeUpdate();
response.sendRedirect("additems.jsp?msg=success");
out.println("additems Added Successfully");
}
    catch(Exception e)
    {
        System.out.println("Error in additems"+e.getMessage());
    }
%>



