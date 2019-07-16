<%-- 
    Document   : ApplicationJsp.jsp
    Created on : 9 Feb, 2019, 4:35:37 PM
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
h1{background-color: black;color: blue;}


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
    <ul style="list-style-type:none;  display:flex; justify-content: space-between; width:40%" >
        <li><a href="index.html"><i class="fa fa-twitter-square" ></i></a>
                  <a href="index.html"><i class="fa fa-facebook" ></i></a>
            <a href="index.html"><i class="fa fa-youtube" ></i></a>
            <a href="index.html"><i class="fa fa-plus-square"></i></a></i>
         
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
                      <td> <a href="index.html"><i>U.S. Citizen Service</i></a></td>
                      <td><a href="index.html"><i>Our Relationship</i></a></td>
         
                      <td><a href="index.html"> <i>Business</i></a></td></td>
                      <td><a href="index.html"> <i>Education & Culture</i></a></td></tr>
                       <td><a href="index.html"> <i>Business</i></a></li></td>
<td><a href="index.html"> <i>Education & Culture</i></a></td></tr>
</ul></div>
       
        <% int p;
        int x =0;
        
            %>
        <%
           // p =Integer.parseInt((String)session.getAttribute("log"));
            
            String reg=request.getParameter("regno");
             String pa=request.getParameter("pass");
              String sn=request.getParameter("sname");
               String name=request.getParameter("gname");
                String place=request.getParameter("dbirth");
                 String sex=request.getParameter("red");
                  String aca=request.getParameter("academic");
                   String pla=request.getParameter("pbirth");
                    String add=request.getParameter("addr");
                     String hom=request.getParameter("home");
                      String ph=request.getParameter("phone");
                       String mob=request.getParameter("mobile");
                        String fa=request.getParameter("fax");
                         String ema=request.getParameter("email");
                         
              String cos=request.getParameter("course");
             String level=request.getParameter("los");
              String eng=request.getParameter("eng");
               String dura=request.getParameter("duration");
                String ielt=request.getParameter("ielts");
                 String opt=request.getParameter("test");
                  String mark=request.getParameter("score");
                   String rel=request.getParameter("name");
                    String relation=request.getParameter("relate");
                     String ad=request.getParameter("add");
                      String phone=request.getParameter("ph");
                       String wok=request.getParameter("occ");
                        String offi=request.getParameter("off");
                        
                 int num;    
                 try
                 {
                     Class.forName("com.mysql.jdbc.Driver");
                     Connection kop = DriverManager.getConnection("jdbc:mysql://localhost:3306/columbiacollege","root","root");
                     Statement sta  = kop.createStatement();
                    /*ResultSet tr =sta.executeQuery("select * from enrolldb where regno = "+p+"");
                     String st,st1,st2;
                    if(tr.next())
                    {
                        st=tr.getString(28);
                        st1 =tr.getString(29);
                        st2 = tr.getString(30);
                        
                        if(st.equals("processing") || st1.equals("processing") || st2.equals("processing"))
                            
                        {
                        out.print(" you have already submitted your application");
                        }
                    else
                        {*/
                            x=1;
                     String query = "insert into enrolldb(regno,pwd,surname,givname,dob,sex,academic,placeb,address,country,phone,mobile,fax,email,course,cert,english,ielts,period,result,score,rname,relate,addr,ph,office,offad,offer,propstatus,pvastatus,vstatus) values ('"+reg+"','"+pa+"','"+sn+"','"+name+"','"+place+"','"+sex+"','"+aca+"','"+pla+"','"+add+"','"+hom+"','"+ph+"','"+mob+"','"+fa+"','"+ema+"','"+cos+"','"+level+"','"+eng+"','"+dura+"','"+ielt+"','"+opt+"','"+mark+"','"+rel+"','"+relation+"','"+ad+"','"+phone+"','"+wok+"','"+offi+"','processing','processing','processing','processing')";
                                  
                     sta.execute(query);
                 /*p=1;
                    if(p==1)
                    { */
                 x=0;
                 if(x==0)
                 {
                        out.print("<h1> You  have  successfully submitted your application <h1>");
                 } 
                   // response.sendRedirect("CourseOffered.jsp");
                      
                    else
                    {
                       out.print("<br> form not submitted <br>"); 
                    }
                    
        }
                 catch(Exception e)                                                                                                                                                        
             
                         
                 {
                     out.print(e);
                 }
               

        %>
    </body>
</html>
