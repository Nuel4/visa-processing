<%-- 
    Document   : AffiConfirmed.jsp
    Created on : 16 Feb, 2019, 2:45:07 PM
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

b{margin-top: 40px;font-family: sans-serif;font-size: 25px; margin-bottom: 70px;color: brown; padding-top: 25px; display: ruby-base;}
aff{margin-top: 50px;}
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
    <div class="us"><h4> Columbia University And Consulate In India</h4></div>
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
           
          <tr>
          <ul>
                      <td> <a href="index.html"><i>Visas</i></a></td>
                      <td> <a href="index.html"><i>Columbia Citizen Service</i></a></td>
                      <td><a href="index.html"><i>Our Relationship</i></a></td>
         
                      <td><a href="index.html"> <i>Business</i></a></li></td>
                      <td><a href="index.html"> <i>Education & Culture</i></a></td>
                       <td><a href="index.html"> <i>Business</i></a></li></td>
                       <td><a href="index.html"> <i>Education & Culture</i></a></td></tr>
        </ul>
    
    
    <body>
        <h1 class="aff">AFFIDAVIT VERIFICATION PAGE!</h1>
        <%! int  nu;
           int f;
        %>
       
        <%
            try
            {
           String reg=request.getParameter("num");
           String nam=request.getParameter("sp");
            String addr=request.getParameter("add");
           String rel=request.getParameter("relate");
           String loc=request.getParameter("loca");
           String ins=request.getParameter("inst");
           String yea=request.getParameter("yr");
           
                 nu = Integer.parseInt((String) session.getAttribute("log"));
              
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/columbiacollege", "root","root");
                Statement stm =con.createStatement();
                String query="select * from affidat where regno="+nu+"";
             ResultSet st =  stm.executeQuery(query);
              if(st.next())
              {
                  f=1;
                 out.print("<b>you have already submitted your affidavit form</b>"); 
              }
              if(f==0)
              {
                  f=0;
                  query="insert into affidat values("+nu+","+reg+",'"+nam+"','"+addr+"','"+rel+"','"+loc+"','"+ins+"','"+yea+"')";
                   stm.execute(query);
              }
              else
              {
                  out.print(" your form is not submitted");
              }
              
              if(reg==""||nam=="" || addr=="" || rel=="" || loc=="" || ins=="" || yea=="")
              {
                 out.print("<b>no space should be left empty</b>");
              }
              else
              {
                  out.print("<b> submitted  successfully!</b>");
              }
              
              }
             catch(Exception na)
             {
                na.printStackTrace();
             }
            %>
            
        
    </body>
</html>

