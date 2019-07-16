<%-- 
    Document   : SponConfirmed.jsp
    Created on : 16 Feb, 2019, 6:01:51 PM
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
        <title>SPONSORSHIP PAGE</title>
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
.spm{margin-top: 40px; align-content: center; font-family: sans-serif;font-size: 25px; margin-bottom: 70px;color: brown; padding-top: 25px; display: ruby-base;}


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
           
          <tr>
          <ul>
                      <td> <a href="index.html"><i>Visas</i></a></td>
                      <td> <a href="index.html"><i>Columbia Citizen Service</i></a></td>
                      <td><a href="index.html"><i>Our Relationship</i></a></td>
         
                      <td><a href="index.html"> <i>Business</i></a></li></td>
                      <td><a href="index.html"> <i>Education & Culture</i></a></td></tr>
                       <td><a href="index.html"> <i>Business</i></a></li></td>
<td><a href="index.html"> <i>Education & Culture</i></a></td></tr>
        </ul>
        <h1 class="spm">SPONSORSHIP CONFIRMATION!</h1>
        <%
            int pk;
            int n=0;
            Connection con;
            Statement ta;
            ResultSet st;
        %>
        <%
            pk = Integer.parseInt((String) session.getAttribute("log"));
            try
            {
                String id = request.getParameter("num");
                 String sp = request.getParameter("spon");
                  String nati = request.getParameter("nat");
                   String add = request.getParameter("ad");
                    String ocp = request.getParameter("oc");
                     String rela = request.getParameter("rel");
                      String pa = request.getParameter("num2");
                       String ag = request.getParameter("num3");
                        String inc = request.getParameter("num4");
                        
                      
                  
                    Class.forName("com.mysql.jdbc.Driver");
                  con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/columbiacollege","root","root");
                   ta = con.createStatement();
                   st =ta.executeQuery("select * from sponsor where regno = "+pk+"");
                   String status;
                   if(st.next())
                   {
                      n=1; 
        %> <h2>You have already submitted your sponsorship details </h2><%   
%> click here to <a href="LoginConfirmed.jsp" target="top">continue<%
                   }
else
{
if(n==0)
{
    status = "insert into sponsor values("+pk+",'"+id+"','"+sp+"','"+nati+"','"+add+"','"+ocp+"','"+rela+"','"+pa+"','"+ag+"','"+inc+"')";
    ta.executeUpdate(status);
out.print("<br>you have successfully submitted your sponsoship details" );
}
else
{
 out.print("<br>your sponsoship form is not submitted yet" );
%>click here to <a href="NewApplication.jsp">continue<%
}

}
            }
            catch(Exception b)
            {
              b.printStackTrace();
            }
            %>
                    
    </body>
</html>
