<%-- 
    Document   : User_Forgot
    Created on : 1 Mar, 2025, 2:22:19 PM
    Author     : RUCHITA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Event Management System</title>
        <link rel="stylesheet" href="bootstrap.min.css">
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
               background-image: url(Image/forget.jpg);
               background-size: cover;
               background-repeat: no-repeat;
           }

            h1
            {
                color:white;
            }
            label
{
    color: white;
    margin-left: 10px;
}

        </style>
    </head>
    <body>
       
         <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-6">
        <div class="container">
    <h1>Forget Password</h1>
    <form action="User_Forgot" method="post">
        <div class="row">
            <div class="col-sm-12">
        <label>Username:</label>
         <input type="email" name="usemail"  placeholder="Enter Name" class="form-control" onkeypress="javascript:return isString(event)" required="">
            </div>
        </div>
        
        <br>
         <div class="row">
            <div class="col-sm-12">
        <label>New Password:</label>
        <input type="password" name="uspassw" placeholder="Conform Password" class="form-control" required="">
            </div>
         </div>
        <br>
         <div class="row">
            <div class="col-sm-12">
         <label>Conform Password:</label>
        <input type="password" name="uscpassw" placeholder="Conform Password" class="form-control" required="">
            </div>
         </div>
        <br>
         <div class="row">
            <div class="col-sm-12">
        <input type="submit"  name="btn"  value="Change Password" class="btn btn-primary form control">
            </div>
         </div>
    </form>
        </div>
            </div>
         </div>
    </body>
</html>
    


