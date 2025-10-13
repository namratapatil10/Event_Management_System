<%-- 
    Document   : Add_Event
    Created on : 21 Feb, 2025, 7:07:37 PM
    Author     : RUCHITA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Event</title>
        <%@include file="Admin_header.jsp" %>
        <script src="validation.js"></script>
        <style>
            .container
            {
                 border-top-right-radius: 40px;
                border-bottom-left-radius: 40px;
                 border-top-left-radius: 40px;
                border-bottom-right-radius: 40px;
                background-color: #b3d9ff;
                padding: 50px;
                border: solid 2px black;
               margin-top: 90px;
                opacity:0.6; 
                
                
            }
           body
           {
               background-image: url(Image/Event.jpg);
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
        <form action="Add_Event" method="post">
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-6">
                <div class="container">
                    <h2 style="color:black"> <center>Add Event</center></h2>
                    <br>
                    <div class="row">
                        <div class="col-sm-12">
                            <b><label>Event Name</label></b>
                            <input type="text" name="ename" class="form-control" placeholder="Enter Event Name" onkeypress="javascript:return isString(event)" required="">
                        </div>
                    </div>
                    <br>
                    <div class="row">
                     <div class="col-sm-6">
                            <b> <label> Image</label></b>
                            <input type="file" name="eimage" class="form-control" placeholder="Choose file">
                        </div>
                        <div class="col-sm-6">
                                <b> <label>Discount</label></b>
                            <input type="text" name="ediscount" id="dis" onmouseover="cal()"  class="form-control" placeholder="Enter Discount" onkeypress="javascript:return isNumber(event)" required="">
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-sm-12">
                            <b><label>Description</label></b>
                            <textarea class="form-control" name="edesc" placeholder="Enter Description"  required=""></textarea>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-sm-12">
                            <input type="submit" name="btn" value="submit" class="btn btn-primary">
                            <input type="reset" name="btn" value="Cancel" class="btn btn-danger">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-3"></div>
        </div>
        </form>
    </body>
</html>
