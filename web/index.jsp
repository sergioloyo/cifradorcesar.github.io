<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Games</title>
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
   
    <link rel="stylesheet" href="css/font-awesome.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="js/main.js"></script>

</head>

<body class="grey darken-4">

    <div class="preloader-background">
        <div class="preloader-wrapper big active">
            <div class="spinner-layer spinner-blue">
                <div class="circle-clipper left">
                <div class="circle"></div>
                </div>
                <div class="gap-patch">
                    <div class="circle"></div>
                </div>
                <div class="circle-clipper right">
                    <div class="circle"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="background-1" id="home">
        <div class="fondo-1">
            <div class="container header">
                <div class="row">
                    <div class="col s6 center-align" data-aos="fade-right">
                        <br></br>
                        <br></br>
                        <br></br>
                        <br></br>
                            <h1 class="title-welcome">Organiza mejor tus actividades con</h1>
                            <span class="center-align">Good Grades</span>      
                            <h2 class="see-more">Empezar a organizar</h2>
                            <a href="#" class="btn-floating pulse sidenav-trigger grey darken-2" data-target="menu-side">
                                <i class="medium material-icons">menu</i>
                            </a>
                    </div>

                    

                    <div class="col s6">
                        <img class="img-women to-center" data-aos="fade-down" src="img/sd-1.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>

    

       

        <ul class="sidenav grey darken-4" id="menu-side">
            <li>
                <div class="user-view">
                    <div class="background">
                        <img src="s3.jpg" alt="">
                    </div>
                    <a href="#">
                        <img src="s1.jpg" alt="" class="circle">
                    </a>
                    <a href="">
                        <span class="name white-text">Administrador</span>
                    </a>
                    <a href="">
                        <span class="email white-text">admi123@gmail.com</span>
                    </a>
                </div>
            </li>

            <li>
                <a class="white-text" href="index.jsp">
                    <i class="white-text material-icons">home</i>
                    Home
                </a>
            </li>
            
            <li>
                <a class="white-text" href="ingresarActividad.jsp">
                    <i class="white-text material-icons">dashboard</i>
                    Ingresar Actividad
                </a>
            </li>
            <li>
                <a class="white-text" href="VerActividad.jsp">
                    <i class="white-text red-text material-icons">dehaze</i>
                    Ver Actividades
                </a>
            </li>

        </ul>

   
    </div>
    </div>

    <footer class="page-footer grey darken-3">
        <div class="container">
            <div class="row">
                <div class="col l6 s12">
                    <h5 class="white-text">Footer Content</h5>
                    <p class="grey-text text-lighten-4">You can use rows and columns here to organize your footer
                        content.</p>
                </div>
                <div class="col l4 offset-l2 s12">
                    <h5 class="white-text">Links</h5>
                    <ul>
                        <li><a class="grey-text text-lighten-3" href="#!">Link 1</a></li>
                        <li><a class="grey-text text-lighten-3" href="#!">Link 2</a></li>
                        <li><a class="grey-text text-lighten-3" href="#!">Link 3</a></li>
                        <li><a class="grey-text text-lighten-3" href="#!">Link 4</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="footer-copyright">
            <div class="container">
                ? 2014 Copyright Text
                <a class="grey-text text-lighten-4 right" href="#!">More Links</a>
            </div>
        </div>
    </footer>
    

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/js/materialize.min.js">
    </script>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var elems = document.querySelectorAll('.slider');
            var instances = M.Slider.init(elems, {
            });
            var elems = document.querySelectorAll('.materialboxed');
            var instances = M.Materialbox.init(elems);

            var elems = document.querySelectorAll('.sidenav');
            var instances = M.Sidenav.init(elems);
        });
    </script>
    </script>

</body>
</html>
