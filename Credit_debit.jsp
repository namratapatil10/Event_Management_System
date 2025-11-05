

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
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
              border: solid 4px white;
                 margin-bottom: 50px;
                 background-color:#000000;
               margin: 50px;
                padding: 30px;
                opacity: 0.6;
            }
            body
            {
                  background-image: url(Image/cd.jpeg);
                background-size: cover;
                background-repeat: no-repeat;
            }
             .form-control
{
    background-color:transparent;
    outline: brown;
    border: white;
    color: white;
    border-bottom: solid white 2px;
    border-left: solid white 2px;
    border-right: solid white 2px;
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
        <form action="Credit_debit" method="post">
        <div class="row">
            <div class="col-sm-0"></div>
            <div class="col-sm-6">
                <div class="container">
                    <h2 style="color:white"><center>Credit/Debit</center></h2>
                    <br>
                    <div class="row">
                        <div class="col-sm-6">
                            <label>Card Holder Name</label>
                            <input type="text" name="cname" class="form-control" placeholder="Enter Name" onkeypress="javascript:return isAlphanumric(event)" required="">
                        </div>
                          <div class="col-sm-6">
                            <label>Card no</label>
                            <input type="text"  name="cno" pattern="\d{13,19}" required title="Card number should be between 13 to 19 digits." class="form-control" placeholder="Enter Number" onkeypress="javascript:return isNumber(event)" required="">
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <%
                         SimpleDateFormat date=new SimpleDateFormat("yyyy-MM-dd");
                         Date date1=new Date();
                         String date2=date.format(date1);
                         %>
                        <div class="col-sm-6">
                            <label>Expiry Date</label>
                            <input type="date" name="cedate" min="<%=date2%>" class="form-control" placeholder="" onkeypress="javascript:return isAlphanumric(event)" required="">
                        </div>
                        <div class="col-sm-6">
                            <label>CVV</label>
                           <input type="text" name="ccvv" pattern="\d{3,4}" required title="CVV should be 3 or 4 digits." class="form-control" placeholder="Enter CVV" onkeypress="javascript:return isNumber(event)" required="">
                        </div>
                    </div>
                    <br>
                     <div class="row">
                        <div class="col-sm-12">
                            <label>Amount</label>
                            <input type="text" name="camount" value="<%=session.getAttribute("tamount")%>" class="form-control" placeholder="Enter Amount" onkeypress="javascript:return isFloat(event)" required="">
                    </div>
                     </div>
                    <br>
                    <br>
                    <div class="row">
                        <div class="col-sm-12">
                            <input type="submit" name="btn" value="submit" class="btn btn-primary">
                            <input type="reset" name="" value="Cancel" class="btn btn-danger">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6"></div>
        </div>
  </form>
    </body>
</html>
