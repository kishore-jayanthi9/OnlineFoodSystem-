
<%@page import="java.sql.*"%>
<%@page import="onlinefood.Dbconnection"%>
<%@ page session="true" %>
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
    
    String statuss= "Sent";
    String type= "Card";
   
    try{
        
        Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
        
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
    catch(Exception e)
    {
        System.out.println("Error in viewitems"+e.getMessage());
    }
%>

