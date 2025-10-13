<%-- 
    Document   : admin_bookinglist
    Created on : 26 Feb, 2025, 12:19:52 PM
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
        <title>Booking List</title>
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
        
            <h2>Booking List</h2>
            <br>
            
            <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Username</th>
      <th scope="col">Contact</th>
      <th scope="col">Address</th>
      <th scope="col">Event Name</th>
      <th scope="col">Theme Name</th>
      <th scope="col">Theme Price</th>
      <th scope="col">Food Name</th>
      <th scope="col">Beverage Name</th>
      <th scope="col">Service Name</th>
      <th scope="col">Food Price</th>
      <th scope="col">Beverage Price</th>
      <th scope="col">Service Price</th>
      <th scope="col">Quantity</th>
      <th scope="col">Date</th>
      <th scope="col">Total Amount</th>
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
            String sql="select * from booking_tbl";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {
      %>
    <tr>
  <form action="Booking" method="post">
      <th scope="row"><%=id++%></th>
      <input type="hidden" name="booid" value="<%=rs.getString("boid")%>">
      <td><%=rs.getString("Uname")%></td>
      <td><%=rs.getString("contact")%></td>
      <td><%=rs.getString("address")%></td>
      <td><%=rs.getString("Ename")%></td>
      <td><%=rs.getString("Tname")%></td>
      <td><%=rs.getString("Tprice")%></td>
      <td><%=rs.getString("Fname")%></td>
      <td><%=rs.getString("Bname")%></td>
      <td><%=rs.getString("Sname")%></td>
      <td><%=rs.getString("Fprice")%></td>
      <td><%=rs.getString("Bprice")%></td>
      <td><%=rs.getString("Sprice")%></td>
       <td><%=rs.getString("Quantity")%></td>
      <td><%=rs.getString("Bdate")%></td>
      <td><%=rs.getString("Total_Amount")%></td>
      
      <td><input type="submit" name="btn" class="btn btn-danger" value="Admin_Delete"></td>
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
        
    </body>
</html>

