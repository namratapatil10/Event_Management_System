

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking</title>
        <%@include file="User_header.jsp" %>
        
        <style>
            .container
            {
                 border-top-right-radius: 40px;
                border-bottom-left-radius: 40px;
                 border-top-left-radius: 40px;
                border-bottom-right-radius: 40px;
                margin-top: 50px;
                margin-bottom: 30px;
                background-color:#f2e6d9;
                border: solid black 3px;
                margin: 50px;
                padding: 30px;
                opacity: 0.8;
            }
             body
            {
                background-image: url(Image/Booking.jpg);
                background-size: cover;
                background-repeat: no-repeat;
            }
             .form-control
{
    background-color: transparent;
    outline: brown;
    border: white;
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
        
        <script>
            function cal()
            {
                var a=document.getElementById("ffprice").value;
                var b=document.getElementById("bbprice").value;
                var c=document.getElementById("ttprice").value;
                var d=document.getElementById("ssprice").value;
                var f=document.getElementById("dis").value;
                var q=document.getElementById("quan").value;
                var s=parseInt(a)*parseInt(q);
                var t=parseInt(b)*parseInt(q);
                var e=parseInt(s)+parseInt(t)+parseInt(c)+parseInt(d);
                var g=e*f/100;
                document.getElementById("tamount").value=parseInt(e)-parseInt(g);
            }
        </script>
    </head>
    <body>
        <form action="Booking" method="post">
            <input type="hidden" id="dis" name="dis" value="<%=session.getAttribute("discount")%>">
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-8">
                <div class="container">
                    <h2><center>Booking</center></h2>
                    <br>
                    <div class="row">
                        <div class="col-sm-3">
                            <label><b>Username</b></label>
                            <input type="text" name="buname" value="<%=session.getAttribute("cname")%>" class="form-control" placeholder="" onkeypress="javascript:return isString(event)" required="">
                        </div>
                         <div class="col-sm-3">
                             <label><b>Contact</b></label>
                             <input type="text" maxlength="10" minlength="10" value="<%=session.getAttribute("contact")%>" name="bucontact" class="form-control" pattern="[7-9]{1}[0-9]{9}" title="Phone number with 7-9 and remaing 9 digit with 0-9" placeholder="" onkeypress="javascript:return isNumber(event)" required="">
                        </div>
                        <div class="col-sm-3">
                            <label> <b>Address</b></label>
                            <textarea class="form-control"  name="buaddress" placeholder="" onkeypress="javascript:return isAlphanumric(event)" required=""><%=session.getAttribute("address")%>"</textarea>
                        </div>
                        <div class="col-sm-3">
                            <label><b>Event Name</b></label>
                            <input type="text" value="<%=session.getAttribute("ename")%>" name="Ename" class="form-control" placeholder="" onkeypress="javascript:return isString(event)" required="">
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-sm-3">
                            <label><b>Food Name</b></label>
                            <input type="text" value="<%=session.getAttribute("fname")%>" name="Fname" class="form-control" placeholder="" onkeypress="javascript:return isString(event)" required="">
                        </div>
                        <div class="col-sm-3">
                             <label><b>Food Price</b></label>
                             <input type="text" id="ffprice" onmouseover="cal()" value="<%=session.getAttribute("fprice")%>" name="Fprice" class="form-control" placeholder="" onkeypress="javascript:return isNumber(event)" required="">
                         </div>
                         <div class="col-sm-3">
                             <label><b>Beverage Name</b></label>
                            <input type="text" value="<%=session.getAttribute("bname")%>" name="Bname" class="form-control" placeholder="" onkeypress="javascript:return isString(event)" required="">
                         </div>
                         <div class="col-sm-3">
                              <label><b>Beverage Price</b></label>
                              <input type="text" id="bbprice" onmouseover="cal()" value="<%=session.getAttribute("bprice")%>" name="Bprice" class="form-control" placeholder="" onkeypress="javascript:return isNumber(event)" required="">
                         </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-sm-3">
                            <label><b>Theme Name</b></label>
                            <input type="text" value="<%=session.getAttribute("tname")%>" name="Tname" class="form-control" placeholder="" onkeypress="javascript:return isString(event)" required="">
                        </div>
                         <div class="col-sm-3">
                             <label><b>Theme Price</b></label>
                            <input type="text" id="ttprice" onmouseover="cal()" value="<%=session.getAttribute("tprice")%>" name="Tprice" class="form-control" placeholder="" onkeypress="javascript:return isNumber(event)" required="">
                        </div>
                        <div class="col-sm-3">
                            <label><b>Service Name</b></label>
                            <input type="text" value="<%=session.getAttribute("sname")%>" name="Sname" class="form-control" placeholder="" onkeypress="javascript:return isString(event)" required="">
                         </div>
                        <div class="col-sm-3">
                              <label><b>Service Price</b></label>
                            <input type="text" id="ssprice" onmouseover="cal()" value="<%=session.getAttribute("sprice")%>" name="Sprice" class="form-control" placeholder="" onkeypress="javascript:return isNumber(event)" required="">
                         </div>
                     </div>
                     <br>
                     <div class="row">
                         <%
                         SimpleDateFormat date=new SimpleDateFormat("yyyy-MM-dd");
                         Date date1=new Date();
                         String date2=date.format(date1);
                         %>
                         <div class="col-sm-4">
                             <label><b>Person's Quantity</b></label>
                             <input type="text" id="quan" onkeyup="cal()" name="quantity" class="form-control" placeholder="Enter Quantity" onkeypress="javascript:return isNumber(event)" required="">
                         </div>
                          <div class="col-sm-4">
                             <label><b>Date</b></label>
                           <input type="date" name="bdate" min="<%=date2%>" class="form-control" placeholder="Enter Date" onkeypress="javascript:return isAlphanumric(event)" required="">
                        </div>
                         <div class="col-sm-4">
                             <label><b>Total Amount</b></label>
                             <input type="text" id="tamount" onkeyup="cal()" name="Tamount" class="form-control" placeholder="" onkeypress="javascript:return isNumber(event)" required="">
                         </div>
                        
                       </div>
                     <br>
                    <div class="row">
                        <div class="col-sm-12">
                            <input type="submit" name="btn" value="Submit" class="btn btn-primary">
                            <input type="reset" name="" value="Cancel" class="btn btn-danger">
                        </div>
                    </div>
                    
                </div>
            </div>
            <div class="col-sm-2"></div>
        </div>
        </form>
    </body>
</html>
