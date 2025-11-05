


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Theme</title>
        <%@include file="User_header.jsp" %>
        <style>
            .theme
            {
                 display: inline-block;
                width: 30%;
                margin: 10px;
                background: white;
                padding: 5px;
                height: 420px;
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
            <h2> <center>View Theme</center></h2>
            <br>
            
            
            <%
                
            Connection cn=null;
    Statement st=null;
    

  try
        {
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/event_management","root","root");
            st=cn.createStatement();
            String sql="select * from add_theme_tbl";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {
            
            
            
            %>
            <div class="theme">
                <form action="Viewpages" method="post">
            <div class="row">
                <div class="col-sm-12">
                    <img src="<%=rs.getString("image")%>" height="200" width="100%">
                    <br>
                    <p>Theme Name: <%=rs.getString("Tname")%></p>
                    <p>Price: <%=rs.getString("Tprice")%></p>
                    <input type="hidden" name="Tname" value="<%=rs.getString("Tname")%>">
                    <input type="hidden" name="Tprice" value="<%=rs.getString("Tprice")%>">
                    <div class="description">
                    <p>Description: <%=rs.getString("description")%></p>
                    </div>   
                 
                     <input type="submit" name="btn" class="btn btn-warning" value="View Theme">
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


