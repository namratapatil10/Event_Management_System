

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
        
     <script src="validation.js"></script>
        <style>
           
            * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body, html {
            height: 100%;
            font-family: Arial, sans-serif;
background: linear-gradient(to bottom, #ffcccc 0%, #ffffff 100%);
             background-repeat: no-repeat;
         background-size: cover;
        }

        .container {
           display: flex;
            height: 100vh;
            border: solid 2px white;
            padding: 0px;
            margin-bottom:350px;
            margin-left: 250px;
            margin-right: 250px;
            /*margin-top:50px;*/
                
        }

        .info-side {
            flex: 1;
            
             background-image: url(Image/Sign_up1.jpg);
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            color: black;
            padding: 20px;
            text-align: center;
        }

        .info-side h1 {
            font-size: 3rem;
            margin-bottom: 10px;
        }

        .info-side p {
            font-size: 1.2rem;
        }

        .form-side {
            flex: 1;
            background-image: url(Image/Sign_up2.jpg);
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #f4f4f4;
            padding: 40px;
           
        }

        .login-form {
            /* background-image: url(Image/lo42.jpg);*/
            background-size: cover;
            background-color: white;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 100%;
           color: black;
           height: 113%;
            max-width:500px;
            background: linear-gradient(to bottom, #ffcccc 0%, #ffffff 100%);
        }

        .login-form h2 {
            margin-bottom: 20px;
            font-size: 2rem;
            color: #333;
        }

        .login-form input ,textarea{
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 1rem;
        }

        .login-form button {
            width: 100%;
            padding: 12px;
            background-color: #3498db;
            border: none;
            color: white;
            font-size: 1rem;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .login-form button:hover {
            background-color: #2980b9;
        }

        .form-footer {
            text-align: center;
            margin-top: 10px;
        }

        .form-footer a {
            text-decoration: none;
            color: #3498db;
        }
      
label
{
    color: black;
    margin-left: 10px;
}

        </style>
   </head>
<body>
    <div class="row">
        <div class="col-sm-3"></div>
        <div class="col-sm-6">
    <div class="container">
        <!-- Information Side -->
        <div class="info-side">
            <div>
                <h1>Welcome Back!</h1>
                <p>Sign in to create your new account to access exclusive content and features.</p>
            </div>
        </div>

        <!-- Form Side -->
        <div class="form-side">
            <div class="login-form">
                <h2 style="color:black"><center>Sign up</center></h2>
                <form action="User_signup" method="POST">
                    <label><b>Full Name</b></label>
                    <input type="text" name="usname" class="form-control" placeholder="Enter name" onkeypress="javascript:return isString(event)" required="">
                     
             <label><b>Email</b></label>
             <input type="email" name="usemail" class="form-control" placeholder="Enter Email">
             <label> <b>Address</b></label>
             <textarea type="text" class="form-control" name="usaddress" placeholder="Enter Address" onkeypress="javascript:return isAlphanumric(event)" required=""></textarea>
             <label><b>Contact</b></label>
             <input type="text" maxlength="10" minlength="10" name="ubucontact" class="form-control" pattern="[7-9]{1}[0-9]{9}" title="Phone number with 7-9 and remaing 9 digit with 0-9" placeholder="Enter Contact" onkeypress="javascript:return isNumber(event)" required="">
             <label><b>Password</b></label>
             <input type="password" name="uspassw" class="form-control" placeholder="Enter Password" onkeypress="javascript:return isAlphanumric(event)" required="">
            <label><b>Conform Password</b></label>
             <input type="password" name="uscpassw" class="form-control" placeholder="Re-Enter Password" onkeypress="javascript:return isAlphanumric(event)" required="">
            
             <br> 
             <br>
             <button type="submit" value="Sign_up" name="btn" style="   background: linear-gradient(to top, #ffcccc 0%, #ffffff 100%); color: black">Sign up</button>
                </form>
                <br>
            </div>
        </div>
    </div>
        </div>
        <div class="col-sm-3"></div>
    </div>
</body>
</html>
