
<%@page import="java.sql.*"%>
<%@page import="onlinefood.Dbconnection"%>
<%@ page session="true" %>
<%
    int id=0;
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String email = request.getParameter("email");
    String address = request.getParameter("address");
    String gen = request.getParameter("gen");
    String mobile = request.getParameter("mobile");
   
    
    try{
       
       Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
       PreparedStatement ps = con.prepareStatement("insert into serviceprovider values(?,?,?,?,?,?,?)");
        ps.setInt(1,id);
        ps.setString(2,username);    
        ps.setString(3,password);
        ps.setString(4,email);
        ps.setString(5,address);
        ps.setString(6,gen);
        ps.setString(7,mobile);
        
       ps.executeUpdate();
response.sendRedirect("addserviceprovider.jsp?message=success");
out.println("serviceprovider Added Successfully");
}
    catch(Exception e)
    {
        System.out.println("Error in addserviceprovider"+e.getMessage());
    }
%>



