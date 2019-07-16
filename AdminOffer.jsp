<%-- 
    Document   : ViewenrollForm.jsp
    Created on : 11 Feb, 2019, 2:45:45 AM
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
.itm:after{
    
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
.ud{margin-top: 20px; color: brown;font-size: 25px; background-color: whitesmoke; padding-top: 20px;}
 .tl{margin-top: 10px;font-size: 10px;color: black; margin-right: 20px;margin-left: 20px;padding: 10px; align-content: center;}    
h3{margin-top: 10px;font-size: 10px;color: black; margin-right: 10px;margin-left: 2%;padding: 10px; align-content: center;}    
td{font-size: 15px; font-size: 40px; margin-bottom: 30px; margin-left: 2%; margin-right: 30px;} 
tr{color: red; font-size: 10px;}
h2{font-family: fantasy;font-size: 5px; padding-bottom: 10px;margin-bottom: 20px; margin-right: 10px; margin-left: 30px;}
        </style>
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
   <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
 <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>  
    </head>


    <body>
    <div class="container1">
    <div style="width:15%;"><img src="pic/lloo.png" style="width:50%;margin-left: 80px;"></div>
    <div class="us"><b>Columbia University And Consulate In India</b></div>
    <ul style="list-style-type:none;  display:flex; justify-content: space-between; width:40%" >
        <li><a href="index.html"><i class="fa fa-twitter-square" ></i></a>
                  <a href="index.html"><i class="fa fa-facebook" ></i></a>
            <a href="index.html"><i class="fa fa-youtube" ></i></a>
            <a href="index.html"><i class="fa fa-plus-square"></i></a>
         
        <a href="index.html"> <i class="fa fa-italic"></i></a></li> 
        <a href="index.html"> <i class="fa fa-search"></i></a>
          <h3 class="bn" align="right"> <a href="LoginConfirmed.jsp"  style="color:red; font-size: 30px; text-decoration: none; "><=</a></h3>

        </ul>
    
</div>
        <div class="air">
            <p> <b class="shf">Air Quality Data:</b>Columbia And Consulate's air quality monitors measure PM 2.5 data<a href=""><span>see here....</span></a></p>
        </div>
        <div class="co"></div>
        <div class="itm">
           
          <tr>
          <ul>
                      <td> <a href="index.html"><i>Visas</i></a></td>
                      <td> <a href="index.html"><i>Columbia Citizen Service</i></a></td>
                      <td><a href="index.html"><i>Our Relationship</i></a></td>
         
                      <td><a href="index.html"> <i>Business</i></a></td>
                      <td><a href="index.html"> <i>Education & Culture</i></a></td>
                       <td><a href="index.html"> <i>Business</i></a></li></td>
<td><a href="index.html"> <i>Education & Culture</i></a></td>
          </ul></tr></div>
  
        <%!
int tregno,f;
Connection con;
Statement stmt;
ResultSet rs;
%>

<%
f=0;
tregno=Integer.parseInt((String)(session.getAttribute("log")));
%>


<%
java.util.Date d=new java.util.Date();
int dy,mn,yr;
dy=d.getDay();
mn=d.getMonth();
yr=d.getYear();
try
{

Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/columbiacollege","root","root");


stmt=con.createStatement();
Statement stmt1;
stmt1=con.createStatement();
ResultSet rs1;

rs=stmt.executeQuery("select  *  from enrolldb where regno= "+tregno+" and offer='ACCEPT'");
String status;

if (rs.next())
{
out.println("<div><h3>File/Reg.No Number : "+rs.getString(1) +"</h3></div>");
out.println("<h3><tr>Date : " +dy+"/"+mn+"/"+yr+"</tr></h3>");
out.println("<h3><tr>Provider Code : 02494A</tr></h3><br>");
out.println("<h3><tr>Dear "+rs.getString(3)+" "+rs.getString(4)+",</tr></h3>");
out.println("<h5><tr>Congratulations! Your application for admission as an International student with HSA has been accepted and I am pleased to offer you a place in the following :</tr></h5>");
out.println("<tr><h5><table border></h5></tr>");
out.println("<tr><td>Course </td><td>"+rs.getString(15)+"</tr>");
out.println("<tr><td>Cricos Code </td><td>02494A</tr>");
out.println("<tr><td>Duration </td><td>3 Year</tr>");
out.println("<tr><td>Tution Fee </td><td>3750AUS$</tr>");
out.println("<tr><td>Commencement  </td><td>June</tr>");
out.println("<br></table><br><br>");
out.println("<h2>Your's Sincerely,<br>International Director</h2>");
}
else
{


rs1=stmt.executeQuery("select  *  from enrolldb where regno= "+tregno+" and offer='DECLINE'");

if (rs1.next())
{
out.println("<h3><font size=2>File/Reg.No Number : "+rs1.getString(1));
out.println("<h3>Date : " +dy+"/"+mn+"/"+yr+"<br>");
out.println("h3><Provider Code : 02494A<br></h3><br>");
out.println("<h3>Dear "+rs1.getString(3)+" "+rs1.getString(4)+",</h3>");
out.println("<h3>Your application for admission as an International student with HSA has been Decline. </h3><br>");
out.println("<h2>Your's Sincerely<br>International Director</h2>");
}
else
{
out.println("<h3 class='ud'>Your admission is Under Processing.</h3>");
}
}
}
catch(Exception ee)
{
out.println(ee.getMessage());
}
%>
    </body>
</html>
