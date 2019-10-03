<%@page import="java.sql.*"%>
<%@page import="onlinefood.Dbconnection"%>
<%@ page session="true" %>
<%
   
   
   int id=0;
    String username = request.getParameter("username");
    String password1 = request.getParameter("password1");
    String gen = request.getParameter("gen");
    String dt = request.getParameter("dt");
    String mobile = request.getParameter("mobile");
    String email = request.getParameter("email");
    String address = request.getParameter("address");
    String sid = request.getParameter("sid");
   
    
    try{
       
       Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
       PreparedStatement ps = con.prepareStatement("insert into user values(?,?,?,?,?,?,?,?,?)");
        ps.setInt(1,id);
        ps.setString(2,username);    
        ps.setString(3,password1);
        ps.setString(4,gen);
        ps.setString(5,dt);
        ps.setString(6,mobile);
        ps.setString(7,email);
        ps.setString(8,address);
        ps.setString(9,sid);
        ps.executeUpdate();
response.sendRedirect("user.jsp?msg=success");
out.println("user Register Successfully");
}
    catch(Exception e)
    {
        System.out.println("Error in user"+e.getMessage());
    }
%>

