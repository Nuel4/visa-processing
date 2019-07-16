<%-- 
    Document   : LoginConfirmed.jsp
    Created on : 12 Feb, 2019, 12:21:18 PM
    Author     : Admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login confirmation</title>
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
.of{ background-color: whitesmoke;color: white;font-size: 25px; margin-top: 30px; padding-top: 20px;}
b{background-color: red;}
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
    <div class="us"><h4>Columbia University And Consulate In India</h4></div>
    <ul style="list-style-type:none;  display:flex; justify-content: space-between; width:40%" >
          <li><a href="index.html"><i class="fa fa-twitter-square" ></i>
        <a href="index.html"><i class="fa fa-facebook" ></i>
        <a href="index.html"><i class="fa fa-youtube" ></i>
       <a href="index.html"><i class="fa fa-plus-square"></i>
         
        <a href="index.html"> <i class="fa fa-italic"></i></a></li> 
        <a href="index.html"> <i class="fa fa-search"></i></a>
         <h3 class="bn" align="right"> <a href="NewApplication.jsp"  style="color:red; font-size: 30px; text-decoration: none; "><=</a></h3>

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
        
        <div class="of">
            <b>OFFER</b><br><a href="EnrollmentView.jsp" target="">ENROLLMENT FORM</a>
        <br>
        <a href="AdminOffer.jsp" target="right">OFFER PLACED</a>
        <br>
        <br><b>PVA</b><br>
        <%!
           int passwd;
         %>  
           <%
           try
           {
               passwd = Integer.parseInt((String) session.getAttribute("log"));
               
               Class.forName("com.mysql.jdbc.Driver");
               Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/columbiacollege", "root", "root");
               Statement stat = con.createStatement();
              ResultSet rs=stat.executeQuery("select  *  from ieltsdb where regno= "+passwd+"");
               
               if(rs.next())
               {
                 
                   
           %>
           <a href="IeltSelect.jsp" target="right"> IELTS STATUS </a>
           
           <br>
           <%
               }
         else
            {
         %>
            <a href="IeltsCheck.jsp" target="right"> IELTS FORM</a>
            <br>
            <%
            } 
            con.close();
           }
           catch(Exception ee)
           {
              out.print(ee);
ee.printStackTrace();
           }
        %>
        
        <%
            
             try
             {
                 int paswd = Integer.parseInt((String) session.getAttribute("log"));
                 
               Class.forName("com.mysql.jdbc.Driver");
               Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/columbiacollege", "root", "root");
               Statement ment = con.createStatement();
               ResultSet et = ment.executeQuery("select * from bankloan where regno = "+paswd+"");
               
               if(et.next())
               {
               %>
               <a href="BankSelect.jsp" target="right">BANK STATUS</a>
               <br>
               <%
               }
                else
            {
               %>
               <a href="BankProcess.jsp" target="right">BANK FORM</a>
               <br>
               <%
              }
             }
             catch(Exception ex)
             {
                 out.print(ex);
             }
            %>
        
            <%!
                int pawd;
            %>
            <%
                try
                {
                   pawd = Integer.parseInt((String) session.getAttribute("log"));
                   
                   Class.forName("com.mysql.jdbc.Driver");
                   Connection nop = DriverManager.getConnection("jdbc:mysql://localhost:3306/columbiacollege", "root", "root");
                   Statement st = nop.createStatement();
                   ResultSet ty = st.executeQuery("select *from land where regno = "+pawd+"");
                   
                   if(ty.next())
                   {
             %>
             <a href="PropSelect.jsp" target="right"> PROPERTY STATUS</a>
             <br>
               <%
                   }
                   else
                   {
                   %>
                   <a href="propcheck.jsp" target="right">LANDED PROPERTY FORM</a>
                   <br>
                   <%
                   }
                } 
                catch(Exception xp)
                {
                    out.print(xp);
                }
            %>
        
            <%! 
                int pad;
            %>
            <%
               try
               {
                pad = Integer.parseInt((String) session.getAttribute("log"));
                Connection nett =DriverManager.getConnection("jdbc:mysql://localhost:3306/columbiacollege", "root", "root");
                Statement tem =nett.createStatement();
                ResultSet rr = tem.executeQuery("select *from affidat where regno = "+pad+"");
                if(rr.next())
                {
            %>
            <a href="AffiSelect.jsp" target="right">AFFIDAVIT STATUS</a>
            <br>      
            <%
            }    
                else
                {
           %>  
           <a href="AffiConect.jsp" target="right">AFFIDAVIT FORM</a>
           <br>
           <%
           }
      }
               catch(Exception ep)
               {
                   out.print(ep);
                   
               }
            %>
            
            <%!
                int pd;
             %>
             <%
                 try
                {
                   pd = Integer.parseInt((String) session.getAttribute("log"));
                   Class.forName("com.mysql.jdbc.Driver");
                   Connection kop = DriverManager.getConnection("jdbc:mysql://localhost:3306/columbiacollege", "root", "root");
                    Statement ste    = kop.createStatement();
                   
                   ResultSet sr = ste.executeQuery("select * from sponsor where regno = "+pd+"");
                   
                   if(sr.next())
                   {
                  %>
                  <a href="SponsorSelect.jsp" target="right">SPONSORSHIP STATUS</a>
                  <br>
                  <%
                   }
                   else
                   {
                 %>
                 <a href="SponsorConect.jsp" target="">SPONSORSHIP FORM</a>
                 <br>
                 <%
                   }
                           
                }
                catch(Exception eb)
                {
                    out.print(eb);
                    
                }
                %>
                
                       
                <%
                try
                    {
                       passwd = Integer.parseInt((String) session.getAttribute("log"));
                       Class.forName("com.mysql.jdbc.Driver");
                       Connection vop = DriverManager.getConnection("jdbc:mysql://localhost:3306/columbiacollege", "root", "root");
                       Statement stt = vop.createStatement();
                       ResultSet rd = stt.executeQuery("select * from passport where regno ="+passwd+"");
                       
                       if(rd.next())
                       {
                      %>
                      <a href="PassSelect.jsp" target="">PASSPORT STATUS</a>
                      <br>
                       
                       <%
                       }
                           else 
                       {
                       %>
                      <a href="PassConnect.jsp" target="right"> PASSPORT FORM</a>
                      <br>
                      <%
                       }     
                    }
                    catch(Exception rp)
                    {
                        out.print(rp);
                    }
                    %>
            
            
                    <%  
                    try
                    {
                       passwd = Integer.parseInt((String) session.getAttribute("log"));
                       Class.forName("com.mysql.jdbc.Driver");
                       Connection vop = DriverManager.getConnection("jdbc:mysql://localhost:3306/columbiacollege", "root", "root");
                       Statement stt = vop.createStatement();
                       ResultSet rd = stt.executeQuery("select * from health where regno ="+passwd+"");
                       
                       if(rd.next())
                       {
                      %>
                      <a href="HealthSelect.jsp" target="">HEALTH STATUS</a>
                      <br>
                       
                       <%
                       }
                           else 
                       {
                       %>
                      <a href="HealthConnect.jsp" target="right"> HEALTH FORM</a>
                      <br>
                      <%
                       }
%>
<br><br><b>KNOW YOUR STATUS</b><br> 
 <a href="Visassessment.jsp" target="right">PERSONAL ASSESSMENT REPORT</a>
 <br> <b>VISA</b><br>
                
                      <%
                    }
                    catch(Exception rp)
                    {
                        out.print(rp);
                    }
               %>
              
               <a href="PVAssessment.jsp" target="right"> VISA STATUS</a>
                <br>
                    
                <br>
                <a href="NewApplication.jsp" target="right"><b>LOGOUT</b></a>
            
        </div></div>
            
    </body>
</html>

