<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <!--<link href="css/trainerCss.css" rel="stylesheet" type="text/css">-->
        <title>JSP Page</title>
        <style>
            .masthead{
                background-color:brown;
                color:#cccccc;
                font-family: "Lucida Handwriting", "Courier New", monospace;    
            }
            .header{
                background-color:gray;
                text-align:center;
            }
            .glyphicon-home{
                font-size: 30px;
                margin-left: 20px;
                margin-top: 20px;
                margin-bottom: 0px;
                color: white;
            }
            .fw-light{
                margin-top: 0px;
            }

        </style>
    </head>
    <body>
        <header class="masthead">
            <a href="/">
                <span class="glyphicon glyphicon-home"></span>
            </a>
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <div class="col-12 text-center">
                        <h1 class="fw-light">Web Agenda</h1>
                        <p class="lead">The easiest way to organize employee data</p>
                    </div>
                </div>
            </div>
        </header>
        <h1 class="header">Trainers</h1>
        <div class="container my-5">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <!--<th scope="col">ID</th>-->
                        <th scope="col">First Name</th>
                        <th scope="col">Last Name</th>
                        <th scope="col">Subject</th>
                    </tr>
                <thead>
                    <c:forEach items="${alltrainers}" var="trainer" >
                    <tbody>
                        <tr>
                            <!--<th scope="row">${trainer.trainerId}</th>-->
                            <th scope="row">${trainer.firstname}</th>
                            <th scope="row">${trainer.lastname}</th>
                            <th scope="row">${trainer.subject}</th>
                        </tr>
                    <tbody>
                    </c:forEach>
            </table>
        </div>
    </body>
    <footer
        class="text-center text-lg-start text-white"
        style="background-color:brown"
        >
        <section class="">
            <div class="container text-center text-md-start mt-5">
                <div class="row mt-3">
                    <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                        <h6 class="text-uppercase fw-bold">Web Agenda</h6>
                        <hr
                            class="mb-4 mt-0 d-inline-block mx-auto"
                            style="width: 60px; background-color:brown; height: 2px"
                            />
                        <p>
                            You can contact with us whenever you want to change or update your Web Agenda App. 
                            Our communication team is availiable 24 hours per day ! 
                        </p>
                    </div>
                    <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                        <h6 class="text-uppercase fw-bold">Useful links</h6>
                        <hr
                            class="mb-4 mt-0 d-inline-block mx-auto"
                            style="width: 60px; background-color: brown; height: 2px"
                            />
                        <p>
                            <a href="#!" class="text-white">Your Account</a>
                        </p>
                        <p>
                            <a href="#!" class="text-white">Help</a>
                        </p>
                    </div>
                    <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                        <h6 class="text-uppercase fw-bold">Contact</h6>
                        <hr
                            class="mb-4 mt-0 d-inline-block mx-auto"
                            style="width: 60px; background-color: brown; height: 2px"
                            />
                        <p><i class="fas fa-home mr-3"></i> Athens, ATH 10012, ATH</p>
                        <p><i class="fas fa-envelope mr-3"></i> info@example.com</p>
                        <p><i class="fas fa-phone mr-3"></i> + 01 234 567 88</p>
                        <p><i class="fas fa-print mr-3"></i> + 01 234 567 89</p>
                    </div>
                </div>
            </div>
        </section>
        <div
            class="text-center p-3"
            style="background-color: rgba(0, 0, 0, 0.2)"
            >
            © 2022 Copyright:
            <a class="text-white">WebAgenda</a
            >
        </div>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>   
</html>

