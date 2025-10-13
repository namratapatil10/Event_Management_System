<%-- 
    Document   : View_Food
    Created on : 26 Feb, 2025, 12:16:00 PM
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
        <title> View Food</title>
        <%@include file="User_header.jsp" %>
        <style>
            .food
            {
                display: inline-block;
                width: 30%;
                margin: 10px;
                background: white;
                padding: 5px;
                height: 460px;
           
            }
            body
            {
                 background-image: url(Image/Background1.jpg);
               background-size: cover;
            }
            .description
            {
                width: 100%;  /* You can adjust the width */
  word-wrap: break-word;
  white-space: normal;
  line-height: 1.6;
            }
        </style>
    </head>
    <body>
        <br>
        <div class="container">
            <br>
            <h2> <center>View Food</center></h2>
            <br>
            
            
            <%
                
            Connection cn=null;
    Statement st=null;
    

  try
        {
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/event_management","root","root");
            st=cn.createStatement();
            String sql="select * from add_food_tbl";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {
            
            
            
            %>
            <div class="food">
                <form action="Viewpages" method="post">
            <div class="row">
                <div class="col-sm-12">
                    <img src="<%=rs.getString("image")%>" height="200" width="100%">
                    <br>
                    <p>Food Name: <%=rs.getString("Fname")%></p>
                    <p>Price: <%=rs.getString("Fprice")%></p>
                    <input type="hidden" name="Fname" value="<%=rs.getString("Fname")%>">
                    <input type="hidden" name="Fprice" value="<%=rs.getString("Fprice")%>">
                    <div class="description">
                    <p>Description: <%=rs.getString("description")%></p>
                    </div>
                     <input type="submit" name="btn" class="btn btn-warning" value="View Food">
                </div>
            </div>
                </form>
            </div>
            <%
            
            }
        
        }catch(Exception ex)
        {
            out.println(ex.toString());
        }
            %>
           
            
        </div>
    </body>
</html>

