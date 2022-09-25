
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link href="css/trainerCss.css" rel="stylesheet" type="text/css">
        <title>JSP Page</title>
    </head>
    <body>
        <header class="masthead">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <div class="col-12 text-center">
                        <h1 class="fw-light">Web Agenda</h1>
                        <p class="lead">The easiest way to organize employee data</p>
                    </div>
                </div>
            </div>
        </header>   
        </br>
        <div class="container-fluid">
            <div class="row">
                <div class=" col-3"> 
                    <svg xmlns="http://www.w3.org/2000/svg"  fill="currentColor" class="bi bi-mortarboard-fill" viewBox="0 0 16 16">
                    <path d="M8.211 2.047a.5.5 0 0 0-.422 0l-7.5 3.5a.5.5 0 0 0 .025.917l7.5 3a.5.5 0 0 0 .372 0L14 7.14V13a1 1 0 0 0-1 1v2h3v-2a1 1 0 0 0-1-1V6.739l.686-.275a.5.5 0 0 0 .025-.917l-7.5-3.5Z"/>
                    <path d="M4.176 9.032a.5.5 0 0 0-.656.327l-.5 1.7a.5.5 0 0 0 .294.605l4.5 1.8a.5.5 0 0 0 .372 0l4.5-1.8a.5.5 0 0 0 .294-.605l-.5-1.7a.5.5 0 0 0-.656-.327L8 10.466 4.176 9.032Z"/>
                    </svg>
                </div>

                <div class="col-5 text-center">
                    In Web Agenda Plattform you can easily manage all your school's data.
                    With a click of a button you can insert, update or delete trainers' information !
                </div>
                <div class="buttons">
                    <div class="container p-3 my-3 border"><td><a class="btn" href="trainer/redirectTrainerInsert" role="button">Insert Trainer</a></td> </div>
                    <div class="container p-3 my-3 border"> <td><a class="btn" href="trainer/redirectTrainerListView" role="button">View Trainer List</a></td></div>
                    <div class="container p-3 my-3 border"><td><a class="btn" href="trainer/redirectTrainerList" role="button">Delete or Update Trainer</a></td></div>
                </div>
            </div>

        </div>
    </body>
    <footer
        class="text-center text-lg-start text-white"
        style="background-color:brown"text-center text-lg-start text-white footer fixed-bottom
        >
        <div class="container text-center text-md-start mt-1">
            <div class="row mt-1">
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
