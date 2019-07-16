<%-- 
    Document   : Autoselect2.jsp
    Created on : 27 Feb, 2019, 8:28:47 AM
    Author     : Admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <style type="text/css">
            body{
                margin: 0;
                font-family: Arial, Helvetica, sans-serif;
            }
            li{
                color: white;
            }
            .fa-facebook{color:white; size: 50px;}
            .fa-twitter-square{color: white;}
            .fa-youtube{color: white;}
            .fa-plus-square{color: white;}
            .fa-italic{color: white;}
            .fa-search{color: white;}
            .container1
            {margin-top: 0px;
             margin-left: 0px;
           
                      margin-right: 0px;
                      display: flex;
                      justify-content: space-between;
                      align-items: center;
                     background-color: #003875;
                     padding: 60px 2rem;
                         
            }
            .us{margin-top: 30px;
            margin-right:200px;
            color: white;
            font-size: 25px;
            font-family: sans-serif;}
            .air{
                margin-top: 0px;
                background-color: #ccc;
                padding: 0px;
                margin-left: 0px;
                font-size: 30px;
            }
            .shf{
                margin-left: 50px;
            }
           .co{
               border-top: 5px solid #c33;
    
    margin: 0px;
}
.itm{
   
    font-size: 30px;
    padding: 10px;
    font-family: cursive;
    color: black;
   font-weight: normal;
   padding: 12px;
   font-family: sans-serif;
   margin-left: 70px;
}
.itm::after{
    
    content: '\94';
    font-size: 50px;
    color: #007bff;
    position: relative;
    line-height: 10px;
    bottom: -15px;
    left: 5px;  
}
.rd{
    background-size: cover;
    width: 100%;
    height: 500px;
    position: relative;
    margin: 0 auto;
    overflow: hidden;
    top: -50px;
    z-index: 9;
}


        </style>
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
   <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
 <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>  
    </head>


    <body >
    <div class="container1">
    <div style="width:15%;"><img src="pic/log.png" style="width:50%;margin-left: 80px;"></div>
    <div class="us"><b> U.S. Embassy & Consulate In India</b></div>
    <ul style="list-style-type:none;  display:flex; justify-content: space-between; width:40%" >
          <li><a href="index.html"><i class="fa fa-twitter-square" ></i>
        <a href="index.html"><i class="fa fa-facebook" ></i>
        <a href="index.html"><i class="fa fa-youtube" ></i>
       <a href="index.html"><i class="fa fa-plus-square"></i>
         
        <a href="index.html"> <i class="fa fa-italic"></i></a></li> 
        <a href="index.html"> <i class="fa fa-search"></i></a>
        </ul>
    
</div>
        <div class="air">
            <p> <b class="shf">Air Quality Data:</b>U.S Embassy And Consulate's air quality monitors measure PM 2.5 data<a href=""><span>see here....</span></a></p>
        </div>
        <div class="co"></div>
        <div class="itm">
           
          <tr><a href="index.html"><i></td>
                      <td> <a href="index.html"><i>Visas</i></a></td>
                      <td> <a href="index.html"><i>U.S. Citizen Service</i></a></td>
                      <td><a href="index.html"><i>Our Relationship</i></a></td>
         
                      <td><a href="index.html"> <i>Business</i></a></li></td>
                      <td><a href="index.html"> <i>Education & Culture</i></td></tr>
                       <td><a href="index.html"> <i>Business</i></a></li></td>
                      <td><a href="index.html"> <i>Education & Culture</i></td></tr>
        </ul>
        <%
            int x=0;
            String p = request.getParameter("num");
          //String pd="";
          
         int pd = Integer.parseInt(p);
          
            String na="",ps="";
            try{
Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/trynew","root","root");

//out.println("abcd");
Statement stmt=con.createStatement();
String q ="select * from del where regno ="+pd+"";
out.println(q);
ResultSet rs=stmt.executeQuery(q);
if(rs.next())
{
    //x=1;
   // pd = rs.getString(1);
    pd = rs.getInt(1);
    na =rs.getString(2);
    ps = rs.getString(3);
    out.println(na);
    out.println(ps);
    out.println(pd);
    
}
else
{
     out.print("<h1>pleaase enter the the right id</h1>");
}
            }
catch(Exception e)
        {
           e.printStackTrace();
        }
         %>
       
           
            <table align="center">
                <tr>
                    <td> EXAM ID </td><td><input type="text" name="te" value="<%=pd%>"></td>
                </tr>
            <br>
            <tr>
                <td> STUDENT NAME</td><td><input type="text" name="te" value="<%=na%>"></td>
            </tr>
            <br>
            <tr>
                <td> STUDent PASSWORD </td><td><input type="text" name="nb" value="<%=ps%>"></td>
            </tr>
           
           
           
    </body>
</html>
