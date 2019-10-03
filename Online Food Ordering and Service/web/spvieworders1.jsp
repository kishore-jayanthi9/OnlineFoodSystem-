
<%@page import="java.util.Random"%>
<%@page import="onlinefood.Mail"%>
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
    
    Random r = new Random();
    int j = r.nextInt(10000 - 5000) + 5000;
    String skey = "vjit"+j+"";
     
   String msg ="Student Id: "+sid+"\nItem Name :"+name+"\nRestaurant Name :"+restaurant+"\nMessage :"+"Your Order Conformed"+"\nOrder Id :"+skey;
    try{
       
       Connection con=Dbconnection.getConnection();
       Statement st = con.createStatement();
       PreparedStatement ps = con.prepareStatement("update orders set statuss='Conform' where id="+id+" and name='"+name+"' and user='"+user+"'");
      
       Mail m= new Mail();
       m.secretMail(msg, user, user);
       
       ps.executeUpdate();
    
response.sendRedirect("spvieworders.jsp?message=success");
out.println("Order Conform");
}
    catch(Exception e)
    {
        System.out.println("Error in spvieworders"+e.getMessage());
    }
%>

