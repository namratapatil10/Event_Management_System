<%-- 
    Document   : user_bookinglist
    Created on : 26 Feb, 2025, 12:25:23 PM
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
        <%@include file="User_header.jsp" %>
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
            String sql="select * from booking_tbl where user_id='"+session.getAttribute("uid")+"'";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {
      %>
    <tr>
        <form action="Booking" method="post">
      <th scope="row"><%=id++%></th>
      <input type="hidden" name="booid" value="<%=rs.getString("boid")%>">
        <th scope="row"><input type="text" name="buname" class="form-control" value="<%=rs.getString("Uname")%>"></th>
         <th scope="row"><input type="text" name="bucontact" class="form-control" value="<%=rs.getString("contact")%>"></th>
         <th scope="row"><input type="text" name="buaddress" class="form-control" value="<%=rs.getString("address")%>"></th>
         <th scope="row"><input type="text" name="Ename" class="form-control" value="<%=rs.getString("Ename")%>"></th>
         <th scope="row"><input type="text" name="Tname" class="form-control" value="<%=rs.getString("Tname")%>"></th>
         <th scope="row"><input type="text" name="Tprice" class="form-control" value="<%=rs.getString("Tprice")%>"></th>
         <th scope="row"><input type="text" name="Fname" class="form-control" value="<%=rs.getString("Fname")%>"></th>
         <th scope="row"><input type="text" name="Bname" class="form-control" value="<%=rs.getString("Bname")%>"></th>
         <th scope="row"><input type="text" name="Sname" class="form-control" value="<%=rs.getString("Sname")%>"></th>
         <th scope="row"><input type="text" name="Fprice" class="form-control" value="<%=rs.getString("Fprice")%>"></th>
         <th scope="row"><input type="text" name="Bprice" class="form-control" value="<%=rs.getString("Bprice")%>"></th>
         <th scope="row"><input type="text" name="Sprice" class="form-control" value="<%=rs.getString("Sprice")%>"></th>
         <th scope="row"><input type="text" name="Quantity" class="form-control" value="<%=rs.getString("Quantity")%>"></th>
         <th scope="row"><input type="text" name="bdate" class="form-control" value="<%=rs.getString("Bdate")%>"></th>

         <th scope="row"><input type="text" name="Tamount" class="form-control" value="<%=rs.getString("Total_Amount")%>"></th>
      
<!--      <td><input type="submit" name="btn" class="btn btn-success" value="Update"></td>-->
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
       
    </body>
</html>
