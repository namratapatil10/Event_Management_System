<%-- 
    Document   : Add_Theme
    Created on : 21 Feb, 2025, 7:10:39 PM
    Author     : RUCHITA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Theme</title>
        <%@include file="Admin_header.jsp" %>
        <script src="validation.js"></script>
        <style>
            .container
            {
                 border-top-right-radius: 40px;
                border-bottom-left-radius: 40px;
                 border-top-left-radius: 40px;
                border-bottom-right-radius: 40px;
                 background-color:#e0ebeb;
                margin-top: 90px;
                margin-left: 40px;
              border: solid 3px black;
                padding: 30px;
                color: white;
                opacity: 0.6;
            }
            body
            {
                background-image: url("Image/theme1.jpg");
                background-size: cover;  
            }
             .form-control
{
    background-color: transparent;
    outline: brown;
    border: black;
    color: black;
    border-bottom: solid black 2px;
    border-top: solid black 2px;
    border-left: solid black 2px;
    border-right: solid black 2px;
    border-radius: 25px;
    cursor: pointer;
    
}
label
{
    color: black;
    margin-left: 10px;
}
       </style>
    </head>
    <body>
        <form action="Add_Theme" method="post">
        <div class="row">
            <div class="col-sm-0"></div>
            <div class="col-sm-6">
                <div class="container">
                    <h2 style="color:black"><center>Add Theme</center></h2>
                    <br>
                    <div class="row">
                        <div class="col-sm-6">
                            <b><label>Theme Name</label></b>
                                <input type="text" name="tname" class="form-control" placeholder="Enter Theme Name" onkeypress="javascript:return isString(event)" required="">
                        </div>
                        <div class="col-sm-6">
                            <b> <label> Image</label></b>
                            <input type="file" name="timage" class="form-control" placeholder="Choose file">
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-sm-6">
                            <b> <label>Price</label></b>
                            <input type="text" name="tprice" class="form-control" placeholder="Enter Price" onkeypress="javascript:return isNumber(event)" required="">
                        </div>
              
                        <div class="col-sm-6">
                            <b><label>Description</label></b>
                            <textarea class="form-control" name="tdesc" placeholder="Enter Description" required=""></textarea>
                        </div>
                    </div>
                        <br>
                        <div class="row">
                        <div class="col-sm-12">
                            <input type="submit" name="btn" value="submit" class="btn btn-primary">
                            <input type="reset" name="" value="Cancel" class="btn btn-danger">
                        </div>
                        </div>
                    </div>
                    <br>
                </div>
            </div>
            <div class="col-sm-6"></div>
    </form>
    </body>
</html>
