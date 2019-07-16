<%-- 
    Document   : AdminA_R.jsp
    Created on : 22 Feb, 2019, 6:13:25 PM
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
            .erl{color:white; size: 50px;}
            
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
h3{color: brown;font-family: fantasy;font-size: 20px; margin-top: 40px; align-items: center;}

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
    <div class="us"><b>Columbia University And Consulate In India</b></div>
    <ul style="list-style-type:none; color: white; display:flex; justify-content: space-between; width:40%" >
        <li class="op"> <a href="AdminEnrolform.jsp" target="right">Enrollment Review</a></li>
            <li class="op"> <a href="Adminstatus.jsp" target="">Personal Assessment Status</a></li>
            <li class="op">  <a href="AdminVisaselect.jsp" target="">Visa Status</a></li>
            <li class="op"> <a href="NewApplication.jsp" target="top">LOGOUT</a></li>
         <h3 class="bn" align="right"> <a href="NewApplication.jsp"  style="color:red; font-size: 30px; text-decoration: none; "><=</a></h3>

        </ul>
    
</div>
        <div class="air">
            <p> <b class="shf">Air Quality Data:</b>Columbia University And Consulate's air quality monitors measure PM 2.5 data<a href=""><span>see here....</span></a></p>
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
                       <td><a href="index.html"> <i>Business</i></a></td>
                       <td><a href="index.html"> <i>Education & Culture</i></a></td></tr>
        </ul>
   
        <%! 
           int ps;
           String f;
            %>
            <%
               
                ps = Integer.parseInt((String) session.getAttribute("log"));
          %>
          
          <%
              try
              {
                   Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/columbiacollege","root","root");

Statement stmt=con.createStatement();
ResultSet ed = stmt.executeQuery("select * from enrolldb where regno = "+ps+"");
String sta;
if(ed.next())
{
    sta = ed.getString(28);
    if(sta.equals("ACCEPT"))
    {   
    out.print("<h3>Application  has already been accepted<h3/>");
    }
    if(sta.equals("DECLINE"))
    {
        out.print("<h3>Application  has already been rejected !</>");
    }
}
String tst; 
              }
              catch(Exception e)
              {
                  
              }
          %>
          
          
         
            <%
                try
                {
                  Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/columbiacollege","root","root");

Statement stmt=con.createStatement();
String tst;
f=request.getParameter("rdb");

//out.println(f);
if(f.equals("1"))
{
    stmt.executeUpdate("update enrolldb set offer = 'ACCEPT'  where regno = "+ps+"");
    ResultSet ft = stmt.executeQuery("select * from enrolldb where regno = "+ps+"");
    if(ft.next())
    {
        out.append("<h3>Application for admission  is approved</h3>");
    }
    else
    {
        out.print("<h3>Applicant for admission  is rejected !</h3>");
    }
    
}
else
{
    if(f.equals("2"))
    {
        stmt.executeUpdate("update enrolldb set offer = 'DECLINE' where regno = '"+ps+"'");
       ResultSet ft = stmt.executeQuery("select * from enrolldb where regno = '"+ps+"'");
       if(ft.next())
       {
           out.print("<h3>Applicant form admission is rejected</h3>");
           
       }
       else
       {
           response.sendRedirect("AdminEnrolform.jsp");
       }
    }
}
                }
                catch(Exception r)
                {
                    out.print(r);
                    
                }
                %>
    </body>
</html>
