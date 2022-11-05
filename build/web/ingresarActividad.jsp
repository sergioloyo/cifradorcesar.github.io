<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Games</title>
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>      
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/js/materialize.min.js"></script>
        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

        <!--Import Google Icon Font-->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    </head>

    <body class="grey lighten-2">

        <nav>
            <div class="nav-wrapper  grey darken-3">
                <a href="#" class="brand-logo center">Ingreso de actividad</a>
                <ul id="nav-mobile" class="left hide-on-med-and-down">
                </ul>
            </div>
        </nav>

        <!-- BOTON MENU -->
        <div class="container header">
            <br>
            <a href="#" class="btn-floating pulse sidenav-trigger grey darken-2" data-target="menu-side">
                <i class="medium material-icons">menu</i>
            </a>
        </div>
        <!-- FIN DEL BOTON MENU -->

        <!-- FORMULARIO -->
        <br>
        <div class="container white"  padding: 20px"> <!-- CONTAINER -->
            <div class="row"> <!-- ROW -->				
                <form> 
                    <div class="input-field col l6 col-m6">
                        <i class="material-icons prefix">account_circle</i>
                        <input id="icon_prefix" type="text" class="validate"name="Tema">
                        <label for="Tema">Tema</label>
                    </div>

                    <div class="input-field col l6 col-m6">
                        <i class="material-icons prefix">account_circle</i>
                        <input type="text" name="Subtema" id="Subtema">
                        <label for="Subtema">Subtema</label>
                    </div>

                    <div class="clearfix"></div>

                    <div class="input-field col l4 col-m4">
                        <i class="material-icons prefix">date_range</i>
                        <input class="datepicker" type="text" name="Fecha" id="Fecha">
                        <label for="Fecha">Fecha</label>
                    </div>

                    <div class="input-field col l3 m3">
                        <i class="material-icons prefix">map</i>
                        <select name="Carrera" id="Carrera">
                            <option selected disabled>Carrera</option>
                            <option value="4">Ingeneria en sistemas</option>
                        </select>
                    </div>

                    <div class="input-field col l3 m3">
                        <i class="material-icons prefix">map</i>
                        <select name="Curso">
                            <option selected disabled>Curso</option>
                            <option value="1">Calculo 1</option>
                            <option value="2">Calculo 2</option>
                            <option value="3">Sistemas Operativos 1</option>
                            <option value="4">Sistemas Operativos 2</option>
                            <option value="5">Programacion 1</option>
                            <option value="6">Programacion 2</option>
                            <option value="7">Programacion 3</option>
                        </select>
                    </div>

                    <div class="input-field col l3 m3">
                        <i class="material-icons prefix">map</i>
                        <select name="Actividad">
                            <option selected disabled>Actividad</option>
                            <option value="Contenido Semanales">Contenido Semanales</option>
                            <option value="Actividade Semanales">Actividade Semanales</option>
                            <option value="Examen Parcial">Examen Parcial</option>
                            <option value="Examen Final">Examen Final</option>
                            <option value="Tarea">Tarea</option>
                            <option value="Proyecto">Proyecto</option>
                        </select>
                    </div>

                    <div class="clearfix"></div>

                    <button class="btn waves-effect waves-light" type="submit" name="action">Guardar
                        <i class="material-icons right">send</i>
                    </button>

                </form>

                <!-- FIN DEL FORMULARIO -->

            </div> <!-- ROW -->
        </div> <!-- CONTAINER -->
        <br>

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

        <%
            if (request.getParameter("action") != null) {

                Connection conn = null;
                Statement st = null;
                String Tema = request.getParameter("Tema");
                String Subtema = request.getParameter("Subtema");
                String Fecha = request.getParameter("Fecha");
                String Carrera = request.getParameter("Carrera");
                String Curso = request.getParameter("Curso");
                String Actividad = request.getParameter("Actividad");
                String[] parts = Fecha.split("/");
                String mes = parts[1]; 
                String anio = parts[2]; 
                
                Class.forName("org.postgresql.Driver");
                conn = DriverManager.getConnection("jdbc:postgresql://ec2-3-213-228-206.compute-1.amazonaws.com:5432/dc0955np1d7l60", "woeibqhgfadvps", "5cb0416be5b07a0d3928cdb877b68540915e0ff47c6ff29d6d6d711e13bd1478");

                try {
                    st = conn.createStatement();
                    st.executeUpdate("INSERT INTO actividades(Id_carrera,id_curso,anio,mes,tema,Surbtema,actividad,fecha) values ('" + Carrera + "','" + Curso + "','" + anio + "','" + mes + "','" + Tema + "','" + Subtema + "','" + Actividad + "','" + Fecha + "')");

                } catch (Exception Ex) {
                    out.print(Ex);
                }
            }

        %>

        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/js/materialize.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
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


            document.addEventListener('DOMContentLoaded', function () {
                var elems = document.querySelectorAll('select');
                var instances = M.FormSelect.init(elems, options);
            });

        </script>

        <script type="text/javascript">
            $(document).ready(function () {
                $('select').formSelect();
                $('.datepicker').datepicker({
                    format: 'dd/mm/yyyy'
                });
            });

            $(document).on('submit', '#registro', function (e) {
                e.preventDefault();
                console.log($(this).serialize());
            });
        </script>


    </body>
</html>