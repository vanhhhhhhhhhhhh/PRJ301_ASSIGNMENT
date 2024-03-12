<%-- 
    Document   : login
    Created on : Feb 27, 2024, 5:00:01 PM
    Author     : VietAnh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Account" %>


<!DOCTYPE html>
<html>

    <head>
        <title>Responsive Loginform</title>
        <link rel="stylesheet" type="text/css"
              href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="style.css">

        <style>
            body{
                height: 100vh;
                background: orange !important;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
            }


            .img-left {
                width: 45%;
                background: url('https://images2.thanhnien.vn/zoom/700_438/Uploaded/trinm/2023_01_04/fpthanoi01-130.jpg') center;
                background-size: cover;
            }

            .card{
                overflow: hidden;
                border: 0 !important;
                border-radius: 20px !important;
                box-shadow: 0 0.5rem 1rem 0 rgba(0, 0, 0, 0.1);
            }

            

            .card-body{
                padding: 2rem;
            }

            .title{
                margin-bottom: 2rem;
            }

            .form-input{
                position: relative;
            }

            .form-input input{
                width: 100%;
                height: 45px;
                padding-left: 40px;
                margin-bottom: 20px;
                box-sizing: border-box;
                box-shadow: none;
                border: 1px solid #00000020;
                border-radius: 50px;
                outline: none;
                background: transparent;
            }

            .form-input span{
                position: absolute;
                top: 10px;
                padding-left: 15px;
                color: #007bff;
            }

            .form-input input::placeholder{
                color: black;
                padding-left: 0px;
            }

            .form-input input:focus, .form-input input:valid{
                border: 2px solid #007bff;
            }

            .form-input input:focus::placeholder{
                color: #454b69;
            }

            .custom-checkbox .custom-control-input:checked ~ .custom-control-label::before{
                background-color: #007bff !important;
                border: 0px;
            }

            .form-box button[type="submit"]{
                margin-top: 10px;
                border: none;
                cursor: pointer;
                border-radius: 50px;
                background: #007bff;
                color: #fff;
                font-size: 90%;
                font-weight: bold;
                letter-spacing: .1rem;
                transition: 0.5s;
                padding: 12px;
            }

            .form-box button[type="submit"]:hover{
                background: #0069d9;
            }

            .forget-link, .register-link{
                color: #007bff;
                font-weight: bold;
            }

            .forget-link:hover, .register-link:hover{
                color: #0069d9;
                text-decoration: none;
            }

            .form-box .btn-social{
                color: white !important;
                border: 0;
                font-weight: bold;
            }

            .form-box .btn-facebook{
                background: #4866a8;
            }

            .form-box .btn-google{
                background: #da3f34;
            }

            .form-box .btn-twitter{
                background: #33ccff;
            }

            .form-box .btn-facebook:hover{
                background: #3d578f;
            }

            .form-box .btn-google:hover{
                background: #bf3b31;
            }

            .form-box .btn-twitter:hover{
                background: #2eb7e5;
            }


        </style>

    </head>

    <body>

        <!-- LOGIN MODULE -->
        <!DOCTYPE html>
    <html>
        <head>
            <title>Login Form</title>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <link rel="stylesheet" type="text/css" href="style.css">
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
            <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
            <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        </head>
        <body>
            <div class="container">
                <div class="row px-3">
                    <div class="col-lg-10 col-xl-9 card flex-row mx-auto px-0">
                        <div class="img-left d-none d-md-flex"></div>

                        <div class="card-body">
                            <h4 class="title text-center mt-4">
                                Login into account
                            </h4>
                            <form class="form-box px-3" action="login" method="post">
                                <div class="form-input">
                                    <span><i class="fa fa-envelope-o"></i></span>
                                    <input type="text" name="user" placeholder="Email Address" tabindex="10" required>
                                </div>
                                <div class="form-input">
                                    <span><i class="fa fa-key"></i></span>
                                    <input type="password" name="pass" placeholder="Password" required>
                                </div>

                                <div class="mb-3">
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" id="cb1" name="remember_me">
                                        <label class="custom-control-label" for="cb1">Remember me</label>
                                    </div>
                                </div>

                                <div class="mb-3">
                                    <button type="submit" class="btn btn-block text-uppercase">
                                        Login
                                    </button>
                                </div>

                                <div class="text-right">
                                    <a href="#" class="forget-link">
                                        Forget Password?
                                    </a>
                                </div>

                                <div class="text-center mb-3">
                                    or login with
                                </div>

                                <div class="row mb-3">
                                    <div class="col-4">
                                        <a href="#" class="btn btn-block btn-social btn-facebook">
                                            facebook
                                        </a>
                                    </div>

                                    <div class="col-4">
                                        <a href="#" class="btn btn-block btn-social btn-google">
                                            google
                                        </a>
                                    </div>

                                    <div class="col-4">
                                        <a href="#" class="btn btn-block btn-social btn-twitter">
                                            twitter
                                        </a>
                                    </div>
                                </div>

                                <hr class="my-4">

                                <div class="text-center mb-2">
                                    Don't have an account?
                                    <a href="#" class="register-link">
                                        Register here
                                    </a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </body>
    </html>
</body>

</html>



