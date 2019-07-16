<%-- 
    Document   : Visassessment.jsp
    Created on : 21 Feb, 2019, 9:22:07 PM
    Author     : Admin
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
</div>
        <div class="air">
            <p> <b class="shf">Air Quality Data:</b>Columbia University And Consulate's air quality monitors measure PM 2.5 data<a href=""><span>see here....</span></a></p>
        </div>
        <div class="co"></div>
        <div class="itm">
           
          <tr><a href="index.html"><i></td>
                      <td> <a href="index.html"><i>Visas</i></a></td>
                      <td> <a href="index.html"><i>Columbia  Citizen Service</i></a></td>
                      <td><a href="index.html"><i>Our Relationship</i></a></td>
         
                      <td><a href="index.html"> <i>Business</i></a></li></td>
                      <td><a href="index.html"> <i>Education & Culture</i></a></td></tr>
                       <td><a href="index.html"> <i>Business</i></a></li></td>
<td><a href="index.html"> <i>Education & Culture</i></a></td></tr>
        </ul>
    <body bgcolor="">
        <form>
            <center><table>
        <%
        
            Connection con;
            Statement stt;
            ResultSet se;
            %>
            <%
               
int regid1;
%>
<%regid1=Integer.parseInt((String)(session.getAttribute("log")));
%>

<%

try
{
Class.forName("com.mysql.jdbc.Driver");
 con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/columbiacollege","root","root");

Statement stmt=con.createStatement();

ResultSet rs1=stmt.executeQuery("select  *  from ieltsdb where regno= "+regid1+" ");

if (rs1.next())
{
%>
<tr>

<td><a href="IeltSelect.jsp">IELTS REPORT</a></td>
<img src="pic/okj.bmp">
</td>
</tr>
<%
}
else
{
%>
<td>IELTS REPORT</td> 
<img src="pic/no.bmp">
<TD></td>
<tr>
</tr>

<%
}
}
   catch(Exception e)
           {
         
              e.printStackTrace();
              
           }
%>
          
<%

int regid2;
%>
<%
regid2=Integer.parseInt((String)(session.getAttribute("log")));
%>

<%
try
{

Class.forName("com.mysql.jdbc.Driver");
 con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/columbiacollege","root","root");

Statement stmt=con.createStatement();


ResultSet rs2=stmt.executeQuery("select  *  from bankloan where regno= "+regid2+" ");
if(rs2.next())
{
 %> 
 <tr>
     <td> <a href="BankSelect.jsp">BANK LOAN</a>
         <img src="pic/okj.bmp">
     </td></tr>
 <%
}
else
{
%>
 <tr>
     <td>BANK FORM</td>
     <td><img src="pic/no.bmp"></td>
 </tr>
 <%
}
}
catch(Exception d)
        {
            d.printStackTrace();
        }
%>

<%!
int regid3;
%>
<%regid3=Integer.parseInt((String)(session.getAttribute("log")));
%>
<%

try
{

Class.forName("com.mysql.jdbc.Driver");
con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/columbiacollege","root","root");
Statement stmt=con.createStatement();


ResultSet rs3=stmt.executeQuery("select  *  from land where regno= "+regid3+" ");

if(rs3.next())
{
%>
<tr>

<td><a href="PropSelect.jsp">PROPERTY REPORT</a></td>

<td>
<img src="pic/okj.bmp">
</td>
</tr>
<%
}
else
{
%>
<tr>

<td>PROPERTY REPORT</td>

<td>
<img src="pic/no.bmp">
</td>
</tr>
<%
}
}
catch(Exception e)
{
e.printStackTrace();
}
%>

<%!
int regid;

%>
<% regid=Integer.parseInt((String)(session.getAttribute("log")));
%>

<%

try
{

Class.forName("com.mysql.jdbc.Driver");

con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/columbiacollege","root","root");
Statement stmt=con.createStatement();



ResultSet rs3=stmt.executeQuery("select  *  from passport where regno= "+regid+" ");

if(rs3.next())
{
%>
<tr>

<td><a href="PassSelect.jsp">PASSPORT REPORT</a></td>

<td>
<img src="pic/okj.bmp">
</td>
</tr>
<%
}
else
{
%>
<tr>

<td>PASSPORT REPORT</td>

<td>
<img src="pic/no.bmp">
</td>
</tr>
<%
}
}
catch(Exception e)
{
e.printStackTrace();
}
%>

<%!
int regi;
%>
<% regi=Integer.parseInt((String)(session.getAttribute("log")));
%>

<%

try
{

Class.forName("com.mysql.jdbc.Driver");
 con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/columbiacollege","root","root");
Statement stmt=con.createStatement();


ResultSet rs3=stmt.executeQuery("select  *  from affidat where regno= "+regi+" ");

if(rs3.next())
{
%>
<tr>

<td><a href="AffiSelect.jsp">AFFIDAVIT REPORT</a></td>

<td>
<img src="pic/okj.bmp">
</td>
</tr>
<%
}
else
{
%>
<tr>

<td>AFFIDAVIT REPORT</td>

<td>
<img src="pic/no.bmp">
</td>
</tr>
<%
}
}
catch(Exception e)
{
e.printStackTrace();
}
%>

<%!
int reg;
%>
<%regid3=Integer.parseInt((String)(session.getAttribute("log")));
%>

<%

try
{

Class.forName("com.mysql.jdbc.Driver");
 con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/columbiacollege","root","root");
Statement stmt=con.createStatement();


ResultSet rs3=stmt.executeQuery("select  * from health where regno= "+regid3+" ");

if(rs3.next())
{
%>
<tr>

<td><a href="HealthSelect.jsp">HEALTH REPORTs</a></td>

<td>
<img src="pic/okj.bmp">
</td>
</tr>
<%
}
else
{
%>
<tr>

<td>HEALTH REPORT</td>

<td>
<img src="pic/no.bmp">
</td>
</tr>
<%
}
}
catch(Exception e)
{
e.printStackTrace();
}
%>

<%!
int regj;
%>
<%  
    regj=Integer.parseInt((String)(session.getAttribute("log")));
%>

<%

try
{

Class.forName("com.mysql.jdbc.Driver");
 con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/columbiacollege","root","root");
Statement stmt=con.createStatement();


ResultSet rs3=stmt.executeQuery("select * from sponsor where regno= "+regj+" ");

if(rs3.next())
{
%>
<tr>

<td><a href="SponsorSelect.jsp">SPONSORSHIP REPORT</a></td>

<td>
<img src="pic/okj.bmp">
</td>
</tr>
<%
}
else
{
%>
<tr>

<td>SPONSORSHIP REPORT</td>

<td>
<img src="pic/no.bmp">
</td>
</tr>
<%
   } 
 stmt=con.createStatement();  
 rs3=stmt.executeQuery("select * from enrolldb where regno= "+regj+" ");
 String status,status1, status2;
 if(rs3.next())
 {
   status = rs3.getString(28);
   status1 = rs3.getString(29);
   status2 = rs3.getString(30);
//out.println("status="+status);
//out.println("status1="+status1);
//out.println("status2="+status2);
   if(status.equals("ACCEPT") && status1.equals("ACCEPT") && status2.equals("ACCEPT"))
       
   {
       out.print("<table><b> Please provide your passport details and health insurance. </b> </table>");
   }
   else
   {
     if(status.equals("DECLINE") || status1.equals("DECLINE") || status2.equals("DECLINE"))
   {
       out.print("<table><b> Decline! VISA IS REJECTED !. </b> </table>");
   }
     else
     {
         if(status.equals("processing") || status1.equals("processing") || status2.equals("processing"))
   {
       out.print("<table><b> VISA is under consideration. </b> </table>");
   }
         else
         {
            out.print("<table><b> Application not found. </b> </table>");  
         }
     } 
   }
 }
    
}

catch(Exception e)
{
e.printStackTrace();
}
%>
                </table>
            </center></form>
    </body>
</html>
