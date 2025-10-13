<%-- 
    Document   : admin_feedbacklist
    Created on : 26 Feb, 2025, 12:21:50 PM
    Author     : RUCHITA
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback List</title>
        <%@include file="Admin_header.jsp" %>
         <style>
            body
            {
                background-image: url(Image/listbg.jpg);
                background-repeat: no-repeat;
                background-size: cover;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h2>Feedback List</h2>
            <br>
            
            <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Username </th>
      <th scope="col">Contact</th>
      <th scope="col">Message</th>
      <th scope="col">Update</th>
      <th scope="col">Delete</th>
    </tr>
  </thead>
  <tbody>
      <%
    Connection cn=null;
    Statement st=null;
    
    int id=1;
    try
        {
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/event_management","root","root");
            st=cn.createStatement();
            String sql="select * from feedback_tbl";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {
            
            
     
      %>
    <tr>
  <form action="Feedback" method="post">
      <th scope="row"><%=id++%></th>
      <input type="hidden" name="Feid" value="<%=rs.getString("feid")%>">
      <th scope="row"><input type="text" name="ausname" class="form-control" value="<%=rs.getString("Uname")%>"></th>
      <th scope="row"><input type="text" name="auscontact" class="form-control" value="<%=rs.getString("contact")%>"></th>
      <th scope="row"><input type="text" name="ausmessage" class="form-control" value="<%=rs.getString("message")%>"></th>
      
      <td><input type="submit" name="btn" class="btn btn-success" value="Update"></td>
      <td><input type="submit" name="btn" class="btn btn-danger" value="Delete"></td>
  </form> 
  </tr>
    <%
      }
            
        }catch(Exception ex)
        {
            out.println(ex.toString());
        }
    
    %>
    
  </tbody>
</table>
        </div>
    </body>
</html>

