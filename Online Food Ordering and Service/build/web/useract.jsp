
<%@page import="java.sql.*"%>
<%@page import="onlinefood.Dbconnection"%>
<%@ page session="true" %>

<%
        String id = request.getParameter("id");
        String password = request.getParameter("pass");
        try{

        String user=null;
        String sid=null;
        Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from user where sid= '"+id+"' and password1='"+password+"'");
        if(rs.next())
        {
        user = rs.getString(7);
        sid = rs.getString(9);
        session.setAttribute("username",user);
        session.setAttribute("sid",sid);
        System.out.println("User:"+user);

        response.sendRedirect("userhome.jsp?msg=success");
        }
        else 
        {
        response.sendRedirect("user.jsp?msg1=LoginFail");
        }
        }
        catch(Exception e)
        {
        System.out.println("Error in useract"+e.getMessage());
        }
        %>