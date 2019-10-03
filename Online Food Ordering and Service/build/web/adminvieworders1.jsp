
<%@page import="java.sql.*"%>
<%@page import="onlinefood.Dbconnection"%>
<%@ page session="true" %>
<%
   
   
   
    int id=Integer.parseInt(request.getParameter("id"));
    String name = request.getParameter("name");
    int quan=Integer.parseInt(request.getParameter("quan"));
    int total=Integer.parseInt(request.getParameter("total"));
    String user = request.getParameter("user");
    String sid = request.getParameter("sid");
    String restaurant = request.getParameter("restaurant");
   
    
    try{
       
       Connection con=Dbconnection.getConnection();
       Statement st = con.createStatement();
       PreparedStatement ps = con.prepareStatement("update orders set statuss='Forward' where id="+id+" and name='"+name+"' and user='"+user+"'");
       ps.executeUpdate();
response.sendRedirect("adminvieworders.jsp?message=success");
out.println("Order Forward Successfully");
}
    catch(Exception e)
    {
        System.out.println("Error in adminvieworders"+e.getMessage());
    }
%>

