<%-- 
    Document   : Application.html
    Created on : 9 Feb, 2019, 8:58:38 AM
    Author     : Admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
           <title>MOUNTAIN TOP UNIVERSITY ENROLLMENT FORM</title>
           
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
.tb{margin-top: 1px;}
.pe{margin-top: 30%; background-color: white; color: black;font-size: 35px;padding-top: 5px;}
.ck{margin-top: 30px;color: red; margin-left: 1400px;align: right; font-size: 20px;}
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
    <div class="us"><b> Columbia University & Consulate In India</b></div>
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
                       <td><a href="index.html"> <i>Education & Culture</i></a></td></tr></div>
        
        </div>
       
     
    
    
   
        <form method="post" action="ApplicationSubmit.jsp">
            
          
               
            
            <center><u><b class="pe">PERSONAL DETAILS(AS PER PASSPORT)</b></u></center>
                <table class="tb" align="center" border="2" width="40%"><br>
               
                <h1 class="ck">Date:<%= new java.util.Date() %></h1>
                <%
                int k;
                String nu = "";
                //int id=Integer.parseInt(rr.getString(1));
                try
                 {
                     Class.forName("com.mysql.jdbc.Driver");
                     Connection kop = DriverManager.getConnection("jdbc:mysql://localhost:3306/columbiacollege","root","root");
                     Statement sta  = kop.createStatement();
                     
                     String q="select max(regno) from enrolldb";
                     ResultSet rr=sta.executeQuery(q);
                     if(rr.next())
                     {
                        k =rr.getInt(1)+1;
                        nu=""+k;
                    // int id=Integer.parseInt(rr.getString(1)) +1;
                    // reg=""+(id++);
                     }
                     else
                     {
                     k=1;
                       out.print("not found");
                       
                     }
                 }catch(Exception e)
                 {
                   e.printStackTrace();
                 }
                %>
                <tr><td><b>REG NO:</b></td>
                    <td> <input type="text" size="10" name="regno" value="<%=nu%>" readonly> </td></tr>
                
                <tr>
                    <td><b>PASSWORD:</b></td>
                    <td><input type="password" size="10" name="pass"></td>
                </tr>
                <tr><td><b>SURNAME:</b></td>
                 <td> <input type="text" size="40" name="sname" > </td></tr>
                <tr>
                    <td><b>GIVEN NAMES:</b></td>
                <td><input type="text" size="40" name="gname" ></td>
                </tr>
                <tr>
                    <td><b>DATE OF BIRTH:</b></td>
                    <td><input type="text" size="20" name="dbirth" ></td>
                </tr>
                <tr>
                    <td><b>SEX</b></td>
                    <td>MALE<input type="radio" name="red" value="MALE">
                    FEMALE<input type="radio" name="red" value="FEMALE"></td>
                </tr>
                <tr>
                    <td><b>ACADEMIC QUALIFICATIONS :</b></td>
                    <td><input type="text" size="20" name="academic" ></td>
                </tr>
                <tr>
                    <td><b>PLACE OF BIRTH</b></td>
                    <td><input type="text" size="40" name="pbirth" ></td>
                </tr>
                <tr>
                    <td><b>ADDRESS:</b></td>
                    <td><textarea name="addr" row=3 cols=35></textarea></td>
                </tr>
                <tr>
                    <td><b>HOME COUNTRY:</b></td>
                    <td><input type="text" size="40" name="home" ></td>
                </tr>
                <tr>
                    <td><b>PHONE :</b></td>
                    <td><input type="number" size="20" name="phone"></td>
                </tr>
                <tr>
                    <td><b>MOBILE:</b></td>
                    <td><input type="number" size="20" name="mobile"></td>
                </tr>
                <tr>
                   <td><b>FAX:</b></td>
                    <td><input type="text" size="10" name="fax" ></td>
                     </tr>
               
                    <tr>
                      <td><b>EMAIL:</b></td>
                       <td><input type="text" size="40" name="email" ></td>
                    </tr>
           
          
            <center><h2 align="center">COURSES OFFERED</h2></center>
   
   

</th></tr>

<tr>
<th>UNDERGRADUATE</th>
<th>POST GRADUATE</th>
</tr>
<tr>
<td>
    <input type="radio" name="course" value="COMPUTER SCIENCE">COMPUTER SCIENCE<br>
    <input type="radio" name="course" value="ECONOMICS">ECONOMICS<br>
    <input type="radio" name="course" value="ACCOUNTANCY">ACCOUNTANCY<br>
    <input type="radio" name="course" value="LAW">LAW<br>
    <input type="radio" name="course" value="BUSINESS ADMINISTRATION">BUSINESS ADMINISTRATION<br>
    <input type="radio" name="course" value="JOURNALISM">JOURNALISM<br>
    <input type="radio" name="course" value="ENGINEERING">ENGINEERING<br>
    <input type="radio" name="course" value="MEDICINE">MEDICINE<br>
</td>
<td>
    <input type="radio" name="course" value="MCA">MASTER OF COMPUTER APPLICATION<br>
    <input type="radio" name="course" value="NURSING">NURSING<br>
    <input type="radio" name="course" value="PUBLIC ADMINISTRATION">PUBLIC ADMINISTRATION<br>
    <input type="radio" name="course" value="PUBLIC ADMINISTRATION">PUBLIC ADMINISTRATION<br>
    <input type="radio" name="course" value="NATURAL HEALTH PROGRAM">NATURAL HEALTH PROGRAM<br>
    <input type="radio" name="course" value="AGRICULTURAL SCIENCE<">AGRICULTURAL SCIENCE<br>
</td>
</tr>
<tr>
    <td align="center" colspan=2 bgcolor="navy" style="color: white;"><b>LEVEL OF STUDY</b>
</td>
</TR>
<tr>
    <td><input type="radio" name="los" value="DIPLOMA">DIPLOMA</td>
    <td><input type="radio" name="los" value="BSC">DEGREE
<input type="radio" name="los" value="MASTERS">MASTERS</td>
</tr>
<tr>
    <td><input type="radio" name="los" value="OTHERS"> OTHERS</td>
</tr>
<tr>
    
    <td align="center" colspan=2 bgcolor="navy" style="color: white;">
<b> ENGLISH  ASSESSMENT</b>&nbsp;(if applicable)
</td>
</tr>
<tr>
<td colspan=2>
<b>To assess your application we may require details of your English ability</b>
</td>
</tr>
<tr>
<td colspan=2>Have you studied English?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    Yes<input type="radio" name="eng" value="YES" >&nbsp;No<input type="radio" name="eng" value="NO"> 
</td>
</tr>
<tr>
<td colspan=2><i>If yes, for how long?</i>
<input type="text" size=60 name="duration">      
</td>
</tr>
<tr>
<td colspan=2>
Have you passed an English Test such as IELTS?                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Yes<input type="radio" name="ielts" value="YES" >&nbsp;No<input type="radio" name="ielts" value="NO"> 
</td>
</tr>
<tr>
<td colspan=2>
<i>if yes&nbsp;&nbsp;  -&nbsp;which test? </i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" size=60 name="test">      <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<i>what score?</i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" size=60 name="score">      
</td>
</tr>
<br><br>

    <th align="center" colspan="2" bgcolor="navy" style="color: white;"><b> RELATIVES IN THE US</b></th>
    <tr>
        <td><b>RELATIVE'S NAME :</b></td>
        <td><input type="text" name="name"></td><br>
    </tr>
    <tr>
    <td><b>RELATIONSHIP : </b></td>
    <td><input type="text" name="relate"></td><br>
    </tr>
    <tr>
    <td><b>ADDRESS : </b></td>
    <td><input type="text" name="add"></td><br>
    </tr>
    <tr>
    <td><b>PHONE:</b></td>
    <td><input type="number" name="ph"></th><br>
    </tr>
    <tr>
    <td><b>OCCUPATION:</b></td>
    <td><input type="text" name="occ"></td><br>
    </tr>
    <tr>
    <td><b>OFFICE ADDRESS :</b></td>
     <td><input type="text" name="off"></td><br>
    </tr>
    
 
</table>
<center>
<p>
<input type="submit" value="SUBMIT">
<input type="reset"value="Reset">
</center>

                    
                </table>
        </form>
        
    </body>
</html>
