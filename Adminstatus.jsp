<%-- 
    Document   : Adminstatus.jsp
    Created on : 24 Feb, 2019, 2:56:09 PM
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
h2{margin-top: 40px;font-family: sans-serif;font-size: 25px; margin-bottom: 30px;color: brown; padding-top: 25px
h5{margin-top: 40px;font-family: sans-serif;font-size: 25px; margin-bottom: 70px;color: brown; padding-top: 25px; display: ruby-base;}
.te{margin-top: 10px;}

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
          <li><a href="index.html"><i class="fa fa-twitter-square" ></i>
        <a href="index.html"><i class="fa fa-facebook" ></i>
        <a href="index.html"><i class="fa fa-youtube" ></i>
       <a href="index.html"><i class="fa fa-plus-square"></i>
         
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
           
            <tr><ul>
                      <td> <a href="index.html"><i>Visas</i></a></td>
                      <td> <a href="index.html"><i>Columbia Citizen Service</i></a></td>
                      <td><a href="index.html"><i>Our Relationship</i></a></td>
         
                      <td><a href="index.html"> <i>Business</i></a></li></td>
                      <td><a href="index.html"> <i>Education & Culture</i></a></td></tr>
                       <td><a href="index.html"> <i>Business</i></a></li></td>
<td><a href="index.html"> <i>Education & Culture</i></a></td></tr>
        </ul>
    <body>
        <%
            int a=0;
            int f,fnd,tregno;
            Connection con;
            Statement stmt;
            ResultSet rs1,rs2,rs3,rs4,rs5,rs6,rs7,rs8;
            %>
        <%
fnd=0;
f=0;
a=0;
tregno=Integer.parseInt((String) session.getAttribute("log"));
 %>
 
 <%
     try
     {
      Class.forName("com.mysql.jdbc.Driver");
con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/columbiacollege","root","root");

stmt=con.createStatement();

rs1=stmt.executeQuery("select * from enrolldb  where regno= "+tregno+" and offer='ACCEPT' "); 
if(rs1.next())
{
    a=1;
    //out.print("<br>GRANTED! appllicant's  application is accepted <br>");   
}


rs6 = stmt.executeQuery("select * from enrolldb where regno = "+tregno+"  and offer ='processing' ");

if(rs6.next())
{
     out.print("<h2>PROCESSING! the applicant's application is under processing </h2>");
}


rs6 = stmt.executeQuery("select * from enrolldb where regno = "+tregno+"  and offer ='DECLINE' ");

if(rs6.next())
{
     out.print("<h2>DECLINED!  the applicant's  application is rejected !</h2>");
}


if(a==1)
{
 rs4 = stmt.executeQuery("select * from enrolldb where regno ="+tregno+" and pvastatus ='DECLINE' " );
  if(rs4.next())
{
out.println("<h2>The candidate have been already Declined.</h2>");
}
  
rs5=stmt.executeQuery("select  *  from enrolldb  where regno = "+tregno+" and pvastatus='ACCEPT'");
if(rs5.next())
{
out.println("<b><h2>The candidate have been already Accepted.</h2></b>");
}

rs3 =stmt.executeQuery("select  * from enrolldb  where regno = "+tregno+" and pvastatus='Processing'");
if(rs3.next())
{
    out.println("<b><h5>The Application is accepted and documents sent to the sent to the embassy.</h5></b>");
    f=1;
}

}
     }
     catch(Exception e)
     {
         e.printStackTrace();
     }
     
     
    if(f==1)
    {
     %>
     <table align="center" border= 1>
         <%
            int regid1=Integer.parseInt((String)(session.getAttribute("log")));
          %>
          <%
              try
              {
    Class.forName("com.mysql.jdbc.Driver");
 con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/columbiacollege","root","root");
 stmt=con.createStatement();
 rs1=stmt.executeQuery("select  * from ieltsdb where regno= "+regid1+"");
 if(rs1.next())
 {
     fnd++;
 %>
 <tr>
     <td><a href="IeltSelect.jsp">IELTS REPORT</a></td>
 
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
    <td>IELTS REPORT</td>
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

<%
    int regid2;
    %>
    <%
        regid2 = Integer.parseInt((String) session.getAttribute("log"));
        %>
        <%
            try
            {
               Class.forName("com.mysql.jdbc.Driver");
 con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/columbiacollege","root","root");

 stmt=con.createStatement();

 rs2=stmt.executeQuery("select  *  from bankloan where regno= "+regid2+" ");
 if(rs2.next())
 {
     fnd++;
 %>
 <tr>
 <td>
     <a href="BankSelect.jsp"> BANK LOAN FORM</a></td>


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
         <td> BANK LOAN FORM</td>
     
     
         <td>
             <img src="pic/no.bmp"></td>
     </tr>
     <%
   }
}
catch(Exception n)
{
  n.printStackTrace();
}
%>

     <%
         int regid3;
         %>
         <%
             regid3 = Integer.parseInt((String)(session.getAttribute("log")));
             %>
             <%
                 try
                 {
                     Class.forName("com.mysql.jdbc.Driver");
 con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/columbiacollege","root","root");

 stmt=con.createStatement();


 rs3=stmt.executeQuery("select  *  from land where regno= "+regid3+" ");
 if(rs3.next())
 {
     fnd++;
  %>
  <tr> 
      <td>
          <a href="PropSelect.jsp"> LANDED PROPERTY</a>
      </td>
  
 
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
    <td>
        LANDED PROPERTY
    </td>
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
  

<%
         int regid4;
         %>
         <%
             regid4 = Integer.parseInt((String)(session.getAttribute("log")));
             %>
             <%
                 try
                 {
                     Class.forName("com.mysql.jdbc.Driver");
 con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/columbiacollege","root","root");

 stmt=con.createStatement();


 rs3=stmt.executeQuery("select  *  from affidat where regno = "+regid4+" ");
 if(rs3.next())
 {
     fnd++;
  %>
  <tr>
      <td>
          <a href="AffiSelect.jsp"> AFFIDAVIT</a>
      </td>
  
 
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
    <td>
       AFFIDAVIT
    </td>
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


<%
         int regid5;
         %>
         <%
             regid5 = Integer.parseInt((String)(session.getAttribute("log")));
             %>
             <%
                 try
                 {
                     Class.forName("com.mysql.jdbc.Driver");
 con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/columbiacollege","root","root");

 stmt=con.createStatement();


 rs3=stmt.executeQuery("select  *  from sponsor where regno = "+regid5+" ");
 
 if(rs3.next())
 {
     fnd++;
  %>
  <tr>
      <td>
          <a href="SponsorSelect.jsp"> SPONSORSHIP DETAILS</a>
      </td>
  
 
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
    <td>
        SPONSORSHIP FORM
    </td>
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
}
%>

<%
         int regid6;
         %>
         <%
             regid6 = Integer.parseInt((String)(session.getAttribute("log")));
             %>
             <%
                 try
                 {
                     Class.forName("com.mysql.jdbc.Driver");
 con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/columbiacollege","root","root");

 stmt=con.createStatement();


 rs7=stmt.executeQuery("select  *  from passport where regno = "+regid6+" ");
 if(rs7.next())
 {
     fnd++;
  %>
  <tr>
      <td>
          <a href="PassSelect.jsp"> PASSPORT DETAIL</a>
      </td>
  
 
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
    <td>
        PASSPORT FORM
    </td>
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


<%
         int regid7;
         %>
         <%
             regid7 = Integer.parseInt((String)(session.getAttribute("log")));
             %>
             <%
                 try
                 {
                     Class.forName("com.mysql.jdbc.Driver");
 con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/columbiacollege","root","root");

 stmt=con.createStatement();


 rs8=stmt.executeQuery("select  *  from passport where regno = "+regid7+" ");
 if(rs8.next())
 {
     fnd++;
  %>
  <tr>
      <td>
          <a href="HealthSelect.jsp"> HEALTH DETAIL</a>
      </td>
  
 
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
    <td>
        HEALTH FORM
    </td>
    <td>
          <img src="pic/no.bmp">
      </td>
</tr>
     </table>
<%
}
}
catch(Exception e)
{
  e.printStackTrace();
}

%>


<form method="post" action="AdminSta.jsp">
    <table class="te"><center>
    <tr>
    <br><br>
    <center>
    Accept<input type="radio" name="sd" value="1">
    Reject <input type="radio" name="sd" value="2"><br>
    </center> </tr>
        </table><br><br>
        <center> <input  type="submit" name="submit" value="SUBMIT"></center>
    
</form>
   
     
    </body>
</html>
