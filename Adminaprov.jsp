<%-- 
    Document   : Adminaprov.jsp
    Created on : 8 Mar, 2019, 4:11:02 PM
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
    <div style="width:15%;"><img src="pic/log.png" style="width:50%;margin-left: 80px;"></div>
    <div class="us"><b> U.S. Embassy & Consulate In India</b></div>
    <ul style="list-style-type:none;  display:flex; justify-content: space-between; width:40%" >
          <li><a href="index.html"><i class="fa fa-twitter-square" ></i>
        <a href="index.html"><i class="fa fa-facebook" ></i>
        <a href="index.html"><i class="fa fa-youtube" ></i>
       <a href="index.html"><i class="fa fa-plus-square"></i>
         
        <a href="index.html"> <i class="fa fa-italic"></i></a></li> 
        <a href="index.html"> <i class="fa fa-search"></i></a>
        </ul>
    
</div>
        <div class="air">
            <p> <b class="shf">Air Quality Data:</b>U.S Embassy And Consulate's air quality monitors measure PM 2.5 data<a href=""><span>see here....</span></a></p>
        </div>
        <div class="co"></div>
        <div class="itm">
           
          <tr><a href="index.html"><i></td>
                      <td> <a href="index.html"><i>Visas</i></a></td>
                      <td> <a href="index.html"><i>U.S. Citizen Service</i></a></td>
                      <td><a href="index.html"><i>Our Relationship</i></a></td>
         
                      <td><a href="index.html"> <i>Business</i></a></li></td>
                      <td><a href="index.html"> <i>Education & Culture</i></td></tr>
                       <td><a href="index.html"> <i>Business</i></a></li></td>
                      <td><a href="index.html"> <i>Education & Culture</i></td></tr>
        </ul>
       
            <%!
            Connection con;
            Statement stat;
            ResultSet rs;
           int passwd;
           int p=0;
         %>  
           <%
           try
           {
               passwd = Integer.parseInt((String) session.getAttribute("log"));
               
               Class.forName("com.mysql.jdbc.Driver");
               Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/columbiacollege", "root", "root");
               Statement stat = con.createStatement();
              ResultSet rs=stat.executeQuery("select  *  from ieltsdb where iregno= "+passwd+"");
               
               if(rs.next())
               {
                  p=0; 
                  
               }
               else
               {
                   out.print("Application not found");
                   
               }
           }
                
            catch(Exception e)
            {
              e.printStackTrace();
            }
           %>
           
           <%
               if(p==0)
               {
             %>
                          
                    <body bgcolor="">
                    <center><b><h3>IELTS Test Details</h3></b></center>
                    <form method="post" action="Aprovlink.jsp">
                    
                        <center>  
                            <table>
                                   <tr>
           <td><b><i>Reg No</b></td>
<td><input type="text"  name=x  size="20" disabled value=<%= rs.getInt("regno")%>></td>
</tr>
                            <tr>
           <td><b><i>Exam Id</b></td>
<td><input type="text"  name=xa  size="20" disabled value=<%= rs.getString("iregno") %>></td>
</tr>
<tr>
                                <td><b><i>Passport No:</b></i></td>
<td><input type="text"  name=pa  size="10" disabled value=<%=rs.getString("passportno")%>></td>
</tr>
<tr>
                                <td><b><i>Candidate's Name</b></i></td>
<td><input type="text"  name=can  size="15" disabled value=<%= rs.getString("name") %>></td>
</tr>
<tr>
                                <td><b><i>Sex:</b></i></td>
<td><input type="text"  name=sa  size="10" disabled value=<%= rs.getString("sex") %>></td>
</tr>
<tr>
                                <td><b><i>Dob</b></i></td>
<td><input type="text"  name=bi  size="10" disabled value=<%= rs.getString("dob") %>></td>
</tr>
<tr>
                                <td><b><i>Nationality :</b></i></td>
<td><input type="text"  name=nat  size="10" disabled value=<%= rs.getString("nationalty") %>></td>
</tr>
<tr>
                                <td><b><i>Dat Of Exam</b></i></td>
<td><input type="text"  name=da size="10" disabled value=<%= rs.getString("da") %>></td>
<td>/</td>
<td> <input type="text"  name=mo size="10" disabled value=<%= rs.getString("mo") %>></td>
             <td>/</td>
             <td> <input type="text"  name=yr size="10" disabled value=<%= rs.getString("yr") %>></td>
</tr>
<tr>
  <td><b><i>Module :</b></i></td>
<td><input type="text"  name=15  size="10" disabled value=<%= rs.getString("module") %>></td>
</tr>
<tr>
  <td><b><i>Center :</b></i></td>
<td><input type="text"  name=cen  size="15" disabled value=<%= rs.getString("center") %>></td>
</tr>
<tr>
  <td><b><i>Repeating Ielts ?:</b></i></td>
<td><input type="text"  name=rep  size="3" disabled value=<%= rs.getString("rpeat") %>></td>
</tr>
<tr>
  <td><b><i>Reading :</b></i></td>
<td><input type="text"  name=rd  size="10" disabled value=<%= rs.getString("read") %>></td>
</tr>
<tr>
  <td><b><i>Writing :</b></i></td>
<td><input type="text"  name=wr  size="10" disabled value=<%= rs.getString("writte") %>></td>
</tr>
<tr>
  <td><b><i>Listening :</b></i></td>
<td><input type="text"  name=lis  size="10" disabled value=<%= rs.getString("listening") %>></td>
</tr>
<tr>
  <td><b><i>Speaking :</b></i></td>
<td><input type="text"  name=sp  size="10" disabled value=<%= rs.getString("speak") %>></td>
</tr>
<tr>
  <td><b><i>Overall Score:</b></i></td>
<td><input type="text"  name=ova  size="10" disabled value=<%= rs.getString("overall") %>></td>

</tr>
                          
                            </table></center>
Accept<input type="radio"  name=ilt value="1">
Reject<input type="radio"  name=ilt value="2"></td>
<br><br>
<input type="submit"  name=submit value="Enter"></td>
</tr>
                    </form>
<%
                    }
                    
                      
                    %>
    </body>
</html>
