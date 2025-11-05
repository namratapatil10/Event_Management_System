

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment</title>
        <%@include file="User_header.jsp" %>
        <script src="validation.js"></script>
        
        <style>
            .container
            {
                 border-top-right-radius: 40px;
                border-bottom-left-radius: 40px;
                 border-top-left-radius: 40px;
                border-bottom-right-radius: 40px;
                margin-top: 150px;
                margin-bottom: 100px;
                 background-color: transparent;
              border: solid 4px black;
                padding: 30px;
                
            }
            body
            {
               background-image:url(Image/Payment.webp);
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
    color: black;
    margin-left: 10px;
}
        </style>
    </head>
    <body>
        <form action="Payment" method="post">
        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
                <div class="container">
                    <h2><center><b>Payment</b></center></h2>
                    <br>
                    
                    <div class="row">
                        <div class="col-sm-12">
                            <label><b>UPI</b></label>
                            <input type="radio" id="upi" name="upipayment" value="upi">
                        
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-sm-12">
                            <label><b>Credit/Debit</b></label>
                             <input type="radio" id="csrd" name="upipayment" value="card">
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-sm-12">
                            <input type="submit" name="btn" value="Submit" class="btn btn-primary">
                            <input type="reset" name="btn" value="Cancel" class="btn btn-danger">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4"></div>
        </div>

  </form>
    </body>
</html>
