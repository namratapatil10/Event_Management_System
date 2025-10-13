<%-- 
    Document   : Add_Food
    Created on : 21 Feb, 2025, 7:08:38 PM
    Author     : RUCHITA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Food</title>
        <%@include file="Admin_header.jsp" %>
        <script src="validation.js"></script>
        <style>
            .container
            {
                border-top-right-radius: 40px;
                border-bottom-left-radius: 40px;
                 border-top-left-radius: 40px;
                border-bottom-right-radius: 40px;
                margin-top: 80px;
                margin-bottom: 30px;
                background-color:#1a0d00;
                margin: 50px;
                padding: 30px;
                opacity: 0.5;
                border: solid 2px black;
               color: white;
               border: solid 3px white;
                
            }
            body
            {
                background-image: url(Image/Food.jpg);
                background-size: cover;
                background-repeat: no-repeat;
            }
               .form-control
{
    background-color: transparent;
    outline: brown;
    border: white;
    color: white;
    border-bottom: solid white 2px;
    border-top: solid white 2px;
    border-left: solid white 2px;
    border-right: solid white 2px;
    border-radius: 25px;
    cursor: pointer;
    
}
label
{
    color: white;
    margin-left: 10px;
}


        </style>
    </head>
    <body>
        <form action="Add_Food" method="post">
        <div class="row">
            <div class="col-sm-5"></div>
            <div class="col-sm-6">
                <div class="container">
                    <h2 style="color:white"><center>Food </center></h2>
                    <br>
                    <div class="row">
                        <div class="col-sm-6">
                            <b> <label>Food Name</label></b>
                            <input type="text" name="fname" class="form-control" placeholder="Enter Food Name" onkeypress="javascript:return isString(event)" required="">
                            
                    </div>               
                        <div class="col-sm-6">
                            <b> <label> Image</label></b>
                            <input type="file" name="fimage" class="form-control" placeholder="Choose file">
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-sm-6">
                            <b>  <label>Price</label></b>
                            <input type="text" name="fprice" class="form-control" placeholder="Enter Price" onkeypress="javascript:return isNumber(event)" required="">
                        </div> 
                    
                        <div class="col-sm-6">
                            <b><label>Description</label></b>
                            <textarea class="form-control" name="fdesc" placeholder="Enter Description"  required=""></textarea>
                        </div>
                         
                     </div>
                     <br>
                    <div class="row">
                        <div class="col-sm-12">
                            <input type="submit" name="btn" value="submit" class="btn btn-primary">
                            <input type="reset" name="btn" value="Cancel" class="btn btn-danger">
                        </div>
                    </div>
                    <br>
                </div>
            </div>
            <div class="col-sm-1"></div>
        </div>
        </form>
    </body>
</html>