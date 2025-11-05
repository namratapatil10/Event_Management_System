
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
                 background-color:transparent;
               border: solid 3px white;
                margin: 50px;
                padding: 30px;
                opacity: 0.8;
              
            }
            body
            {
                background-image: url(Image/up.jpg);
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
        <form action="UPI" method="post">
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-6">
                <div class="container">
                    <h2 style="color:white"><center>UPI</center></h2>
                    <br>
                    <div class="row">
                        <div class="col-sm-12">
                            <label>UPI Id</label>
                            <input type="text" name="uid" class="form-control" placeholder="Enter UPI ID">
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-sm-12">
                            <label>UPI Number</label>
                            <input type="text" name="unumber" class="form-control" placeholder="Enter UPI Number" maxlength="10"  minlength="8" onkeypress="javascript:return isNumber(event)" required="">
                        </div>
                    </div>
                    <br>
                     <div class="row">
                        <div class="col-sm-12">
                            <label>Amount</label>
                            <input type="text" name="uamount" value="<%=session.getAttribute("tamount")%>" class="form-control" placeholder="Enter Amount" onkeypress="javascript:return isNumber(event)" required="">
                    </div>
                     </div>
                    <br>
                    <br>
                    <div class="row">
                        <div class="col-sm-12">
                            <input type="submit" name="btn" value="Submit" class="btn btn-primary">
                            <input type="reset" name="" value="Cancel" class="btn btn-danger">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-3"></div>
        </div>
  </form>
    </body>
</html>

