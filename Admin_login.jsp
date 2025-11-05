
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
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
          background: linear-gradient(to top, #ffcccc 0%, #ff99cc 100%);
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
            
             background-image: url(Image/login1.jpg);
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
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
            background-image: url(Image/login2.jpg);
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #f4f4f4;
            padding: 40px;
           
        }

        .login-form {
             
            background: linear-gradient(to bottom, #ffcccc 0%, #ff99cc 100%);
            background-size: cover;
            background-color: white;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 350px;
        }

        .login-form h2 {
            margin-bottom: 20px;
            font-size: 2rem;
            color: #333;
        }

        .login-form input {
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
        <!-- Information Side -->
        <div class="info-side">
            <div>
                <h1>Welcome Back!</h1>
                <p>Log in to your account to access exclusive content and features.</p>
            </div>
        </div>

        <!-- Form Side -->
        <div class="form-side">
            <div class="login-form">
                <h2 style="color:white">Login</h2>
                <form action="Admin_login" method="POST">
                    <label><b>Username</b></label>
                    <input type="email" name="aemail" class="form-control" placeholder="Enter Email"  required="">
                     <label><b>Password</b></label>
                    <input type="password" name="apassword" class="form-control" placeholder="Enter Password" onkeypress="javascript:return isAlphanumric(event)" required="">
                    <br>
                    <br>
                    <button type="submit" name="btn" value="Login" style="background: linear-gradient(to top, #ffcccc 0%, #ff99cc 100%)">Login</button>
                </form>
                <br>
                <div class="forgot-password">
                    <a href="Admin_Forgot.jsp">Forgot password?</a>
          </div>
                <div class="form-footer">
                    <p>Don't have an account? <a href="Admin_Signup.jsp">Sign up</a></p>
                </div>
            </div>
        </div>
    </div>
        </div>
        <div class="col-sm-3"></div>
    </div>
</body>
</html>
