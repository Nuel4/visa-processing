<%-- 
    Document   : PassConfirmed.jsp
    Created on : 16 Feb, 2019, 8:33:53 PM
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
        
        <title>Passport Confirmation</title>
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
.bf{margin-top: 40px;font-family: sans-serif;font-size: 25px; margin-bottom: 70px;color: brown; padding-top: 25px; display: ruby-base;}


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
    <div style="width:15%;"><img src="pic/lloo.png" style="width:50%;margin-left: 80px;"></div>
    <div class="us"><b> Columbia University And Consulate In India</b></div>
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
            <p> <b class="shf">Air Quality Data:</b>Columbia University And Consulate's air quality monitors measure PM 2.5 data<a href=""><span>see here....</span></a></p>
        </div>
        <div class="co"></div>
        <div class="itm">
           
          <tr><a href="index.html"><i></td>
                      <td> <a href="index.html"><i>Visas</i></a></td>
                      <td> <a href="index.html"><i>Columbia Citizen Service</i></a></td>
                      <td><a href="index.html"><i>Our Relationship</i></a></td>
         
                      <td><a href="index.html"> <i>Business</i></a></li></td>
                      <td><a href="index.html"> <i>Education & Culture</i></a></td></tr>
                       <td><a href="index.html"> <i>Business</i></a></li></td>
                       <td><a href="index.html"> <i>Education & Culture</i></a></td></tr>
        </ul>
        <h1 class="bf">Passport Confirmation Page!</h1>
        <%!
            int pd;
            int f=0;
        %>
        <%
           pd=Integer.parseInt((String)(session.getAttribute("log")));
           
             String num=request.getParameter("nu");
            String pas=request.getParameter("passno");
             String pname=request.getParameter("passname");
            
              String da=request.getParameter("doi1");
               String mo=request.getParameter("do2");
                String yr=request.getParameter("doi3");
                
                 String pla=request.getParameter("poissue");
                 
                  String auth=request.getParameter("authsign");
                  
                   String is=request.getParameter("i1");
                    String iss=request.getParameter("i2");
                     String isss=request.getParameter("i3");
                     
                      String ep=request.getParameter("di1");
                       String epp=request.getParameter("di2");
                        String eppp=request.getParameter("di3");
                  
            try
              {

Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/columbiacollege","root","root");

Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from passport where regno= "+pd+"");
String sd;
if(rs.next())
{
   f=1;
   out.print("you have already submitted your passport details <br>");
   %> <br> click here to <a href="LoginConfirmed.jsp" target="right">continue</a><%
      
}
else
{
if(f==0)
{
sd="insert into passport values("+pd+",'"+num+"','"+pas+"','"+pname+"','"+da+"','"+mo+"','"+yr+"','"+pla+"','"+auth+"','"+is+"','"+iss+"','"+isss+"','"+ep+"','"+epp+"','"+eppp+"')";
stmt.execute(sd);

out.print(" You have successfully submitted  your passport details <br>");
   %><br> click here to <a href="LoginConfirmed.jsp" target="right">continue</a><%
       }
   else
   {
   
         out.print(" your passport details not submitted yet");
      
           }   
}
      }
            catch(Exception v)
            {
               out.print(v);
            }
            %>
    </body>
</html>
