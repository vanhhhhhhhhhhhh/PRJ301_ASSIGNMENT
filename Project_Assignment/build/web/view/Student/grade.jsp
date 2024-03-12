<%-- 
    Document   : grade
    Created on : Mar 12, 2024, 11:11:54 PM
    Author     : VietAnh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="model.Subject" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>


        <style>
            header {
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 20px 0;
            }


            .view{
                margin-top: 20px;
                width: 100%;
                height: 35px;
                background-color: #F5F5F5;
                display: flex;
                padding-bottom: 10px;
            }

            .view a{
                text-decoration: none;
                margin-left: 50px;
                cursor: pointer;
                margin-right: 5px;
                color: skyblue;
            }


            .left h1 {
                font-size: 24px;
            }

            .right h3 {
                color: #f00;
            }

            .right .img a {
                margin-right: 20px;
            }

            .right .img a img {
                width: 120px;
                height: auto;
            }






            footer{
                margin-top: 30px;
                width: 100%;
                background-color: black;
            }

            footer .note2{
                background-color: white;
            }

            footer .link{
                display: flex;
                justify-content: center;
            }

            footer .link p{
                color: white;
                margin: 5px 5px 10px 5px;
            }

            footer .link a{
                color: white;
                text-decoration: none;
            }
        </style>


        <%
            ArrayList<Subject> subjects = (ArrayList<Subject>) request.getAttribute("subjects");
        %>

    </head>
    <body>



        <header>
            <div class="left">
                <h1>FPT University Academic Portal</h1>
            </div>

            <div class="right">
                <h3>FAP mobile app (myFAP) is ready at</h3>
                <div class="img">
                    <a href="https://apps.apple.com/us/app/myfap/id1527723314">
                        <img hre src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Available_on_the_App_Store_%28black%29_SVG.svg/640px-Available_on_the_App_Store_%28black%29_SVG.svg.png">
                    </a>

                    <a href="https://play.google.com/store/apps/details?id=com.fuct&pli=1">
                        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Google_Play_Store_badge_EN.svg/1200px-Google_Play_Store_badge_EN.svg.png">
                    </a>
                </div>
            </div>
        </header>

        <div class="view">
            <p><a href="#">Home </a></p>
            <p> | Grade-book</p>
        </div>

        <div class="title">
            <h1>Grade report for ${sessionScope.account.username} (${sessionScope.account.displayname})</h1>
        </div>



        <div class = "book_grade">

            <form action="grade" >
                <div class = "left_book">
                    <h3>Select a term, course...</h3>
                    <table>
                        <tr>
                            <th>TERM</th>
                            <th>COURSE</th>
                        </tr>

                        <tr>
                            <td>Spring2024</td>
                            <td>
                                <%
                                    for(Subject s: subjects){
                                %>

                                <p><%= s.getFullname()%></p> <p><%= s.getName()%></p>

                                <%}%>
                            </td>
                        </tr>
                    </table>
                </div>


                <div class = "right_book">

                </div>
                            

            </form>


        </div>




        <footer>
            <p class="note2">Mọi lời khuyên, thắc mắc xin liên hệ: Phòng dịch vụ sinh viên: Email: dichvusinhvien@fe.edu.vn. Điện thoại: (024)7308.13.13</p>
            <div class="link">
                <p>© Powered by </p>
                <p><a href="https://fpt.edu.vn/">FPT University </a> | </p>
                <p><a href="https://cmshn.fpt.edu.vn/">CMS</a> | </p>
                <p><a href="https://library.fpt.edu.vn/">library</a> | </p>
                <p><a href="https://library.books24x7.com/login.asp?ic=0">books24x7</a></p>
            </div>
        </footer>


    </body>
</html>
