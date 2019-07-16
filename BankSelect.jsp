<%-- 
    Document   : BankSelect.jsp
    Created on : 20 Feb, 2019, 6:07:46 PM
    Author     : Admin
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
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
h2{margin-top: 40px;font-family: sans-serif;font-size: 25px; margin-bottom: 30px;color: brown; padding-top: 25px
h5{margin-top: 40px;font-family: sans-serif;font-size: 25px; margin-bottom: 70px;color: brown; padding-top: 25px; display: ruby-base;}
.bk{margin-top: 40px;font-family: sans-serif;font-size: 25px; margin-bottom: 70px;color: brown; padding-top: 25px; display: ruby-base;}


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
            <a href="index.html"><i class="fa fa-youtube" ></i</a>
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
                      <td> <a href="index.html"><i>Columbia Service</i></a></td>
                      <td><a href="index.html"><i>Our Relationship</i></a></td>
         
                      <td><a href="index.html"> <i>Business</i></a></li></td>
                      <td><a href="index.html"> <i>Education & Culture</i></a></td></tr>
                       <td><a href="index.html"> <i>Business</i></a></li></td>
                       <td><a href="index.html"> <i>Education & Culture</i></a></td></tr>
        </ul>
   
       <%!
int tregno,f;
Connection con;
Statement stm;
ResultSet rs;
%>

<%
f=0;
tregno=Integer.parseInt((String)(session.getAttribute("log")));
%>


<%
try
{

Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/columbiacollege","root","root");


stm=con.createStatement();


rs=stm.executeQuery("select  *  from bankloan where regno = "+tregno);

if (rs.next())
{
f=1;
}
else
{
out.println("<b>wrong password.</b>");
}
}
catch(Exception e)
{
out.println(e.getMessage());
}

%>

<%
if(f==1)
{
%>

<body  bgcolor="aaccda">

    <h3 class="bk"><b><i>BANK LOAN DETAILS</i></b></h3>

<form method=post>
    <center> <table><tr>
<td><b><i>Loan Id:</b></i></td>
<td><input type="text"  name=lo  size="20" disabled value=<%= rs.getString("bregno") %>></td>
</tr>
<tr>
<td><b><i>Account Name:</b></i></td>
<td><input type="text"   name=acctname size="20" disabled value=<%= rs.getString("acctname") %>></td>
</tr>
</table>
<table border="0" width="245">
<tr>
<td><b><i>Account Number:</b></i></td>
<td><input type="number"  name=nu size="20" disabled value=<%= rs.getString("acctno") %>></td>
<tr>
<td><b><i>Account Type:</b></i></td>
<td><input type="text"   name=typ size="20" disabled value=<%= rs.getString("acctype") %>></td>
</tr>
<tr>
<td><b><i>Bank Name:</b></i></td>
<td><input type="text"   name=bnk size="20" disabled value=<%= rs.getString("bankname") %>></td>
</tr>
</table>
<table border="0">
<tr>
<td><b><i>Branch:</b></i></td>
<td><input type="text"  name=bnc  size="20" disabled value=<%= rs.getString("branch") %>></td>
</tr>

</table>
<table border="0" width="413">

<tr>
<td><b><i>Bank Location:</b></i></td>
<td><input type="text"  name=bnl  size="20" disabled value=<%= rs.getString("address") %>><font color=red>*</font></td>
</tr>
</table>
<h3><b><i>Candidate Details:</i></b></h3>

<table border="0">
<tr>
<td><b><i>Amount Borrowed:</b></i></td>
<td><input type="text"   name=famname  size="20" disabled value=<%= rs.getString("amtborrowed") %>></td>
</tr>
<tr>
<td><b><i>Account Balance:</b></i></td>
<td><input type="text"   name=firname size="20" disabled value=<%= rs.getString("acctbalance") %>></td>
</tr>

</table>
<table border="0" width="230">
<tr>
<td><b><i>Loan Sanction Date:</b></i></td>
<td><input type="text"  name=da size="2" disabled value=<%= rs.getInt("day") %>></td>
<td>/</td>
<td><input type="text" name=mob  size="2" disabled value=<%= rs.getInt("mon") %>></td>
<td>/</td>
<td><input  type="text" name=yob size="4" disabled value=<%= rs.getInt("year") %>></td>
</tr>
</table>

<p>
<b>Above are the Submitted Data.</b>
</center>
</form>
</body>
<%
    }
%>
</html>
