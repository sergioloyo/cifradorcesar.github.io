<%-- 
    Document   : newjsp
    Created on : 04-nov-2022, 20:53:04
    Author     : iserg
--%>

<%@page import="org.jfree.data.category.DefaultCategoryDataset"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page import="org.jfree.chart.*" %>
<%@page import="org.jfree.chart.plot.*" %>
<%@page import="org.jfree.data.general.*" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DashBoard</title>
    </head>
    <body>

        <%
            
        Class.forName("org.postgresql.Driver");
        Connection con = DriverManager.getConnection("jdbc:postgresql://ec2-3-213-228-206.compute-1.amazonaws.com:5432/dc0955np1d7l60","woeibqhgfadvps","5cb0416be5b07a0d3928cdb877b68540915e0ff47c6ff29d6d6d711e13bd1478");
        Statement cmd = con.createStatement();
        String sql="select nombrecurso as  Curso , mes ,count(estado) as conteo from actividades e left join curso d on e.id_curso = d.id_curso left join carrera a on e.id_carrera = a.id_carrera where logico = true and estado = 'PEN' group by curso,mes";
        ResultSet rs = cmd.executeQuery(sql);
        
        DefaultCategoryDataset data=new DefaultCategoryDataset();
        while (rs.next()){
        
            data.setValue(rs.getInt(2),"Clases",rs.getString(1));
        }
               
        JFreeChart grafico = ChartFactory.createBarChart("Clases pendiente","Cursos","Cantidad",data,PlotOrientation.VERTICAL,true,true,true);
        
        response.setContentType("image/JPEG");
        OutputStream sa = response.getOutputStream();
        
        ChartUtilities.writeChartAsJPEG(sa,grafico, 500, 500);
        


        %>
        
        
        
        
        
    </body>
</html>