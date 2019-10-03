
<%@page import="java.sql.*"%>
<%@page import="onlinefood.Dbconnection"%>
<%@ page session="true" %>

<%
        String email = request.getParameter("name");
        String password = request.getParameter("pass");
        try{

        String user=null;
        Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from serviceprovider where email= '"+email+"' and password='"+password+"'");
        if(rs.next())
        {
        user = rs.getString(2);
        session.setAttribute("username",email);
        System.out.println("User:"+user);

        response.sendRedirect("serviceproviderhome.jsp?msg=success");
        }
        else 
        {
        response.sendRedirect("serviceprovider.jsp?msg1=LoginFail");
        }
        }
        catch(Exception e)
        {
        System.out.println("Error in serviceprovideract"+e.getMessage());
        }
        %>