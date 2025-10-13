<%-- 
    Document   : Feedback
    Created on : 22 Feb, 2025, 8:01:16 AM
    Author     : RUCHITA
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="User_header.jsp" %>
        <script src="validation.js"></script>
        <style>
            .container
            {
                 border-top-right-radius: 40px;
                border-bottom-left-radius: 40px;
                 border-top-left-radius: 40px;
                border-bottom-right-radius: 40px;
                margin-top: 100px;
                margin-bottom: 50px;
                 background-color:#d1d1e0;
               border: solid black 3px;
                margin: 50px;
                padding: 30px;
                opacity: 0.8;
            }
              body
           {
               background-image: url(Image/feed.jpeg);
               background-size: cover;
               
           }
                .form-control
{
    background-color: transparent;
    outline: brown;
    border: white;
    color: white;
    border-bottom: solid white 2px;
    border-top: solid white 2px;
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
        <form action="Feedback" method="post">
              <div class="row">
            <div class="col-sm-0"></div>
            <div class="col-sm-6">
                <div class="container">
                    <h2><center>Feedback</center></h2>
                    <br>
                    <div class="row">
                        <div class="col-sm-12">
                            <label>Username</label>
                            <input type="text" name="ausname" class="form-control" placeholder="Enter Username" onkeypress="javascript:return isString(event)" required="">
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-sm-12">
                            <label>Contact</label>
                            <input type="text" maxlength="10" minlength="10" name="auscontact" class="form-control" pattern="[7-9]{1}[0-9]{9}" title="Phone number with 7-9 and remaing 9 digit with 0-9" placeholder="Enter Contact" onkeypress="javascript:return isNumber(event)" required="">
                        </div>
                    </div>
                    <br>
                     <div class="row">
                        <div class="col-sm-12">
                            <label>Message</label>
                           <textarea class="form-control" name="ausmessage" placeholder="Enter Message" required=""></textarea>
                    </div>
                     </div>
                    <br>
                    <br>
                    <div class="row">
                        <div class="col-sm-12">
                            <input type="submit" name="btn" value="submit" class="btn btn-primary">
                            <input type="reset" name="btn" value="Cancel" class="btn btn-danger">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6"></div>
        </div>
        </form>
    </body>
</html>

