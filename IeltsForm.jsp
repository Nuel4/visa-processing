<%-- 
    Document   : IeltsForm.jsp
    Created on : 15 Feb, 2019, 3:10:19 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <title>IELTS FORM</title>
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
.it{margin-top: 5%;font-family: cursive;}

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
    <div style="width:15%;"><img src="pic/lloo.png"  style="width:50%;margin-left: 80px;"></div>
    <div class="us"><b>Columbia University And Consulate In India</b></div>
    <ul style="list-style-type:none;  display:flex; justify-content: space-between; width:40%" >
          <li><a href="index.html"><i class="fa fa-twitter-square" ></i>
        <a href="index.html"><i class="fa fa-facebook" ></i>
        <a href="index.html"><i class="fa fa-youtube" ></i>
       <a href="index.html"><i class="fa fa-plus-square"></i>
         
        <a href="index.html"> <i class="fa fa-italic"></i></a></li> 
        <a href="index.html"> <i class="fa fa-search"></i></a> 
        <h3 class="bn" align="right"><a href="LoginConfirmed.jsp"  style="color:red; font-size: 30px; text-decoration: none; "><=</a></h3>

        </ul>
        </ul>
    
</div>
        <div class="air">
            <p> <b class="shf">Air Quality Data:</b>>Columbia University And Consulate's air quality monitors measure PM 2.5 data<a href=""><span>see here....</span></a></p>
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
    <body bgcolor="lightgrey">
    <center> <h3 class="it"><b><i>IELTS  Form</i></b></h3></center>
       <form method="post" action="IeltsSubmit1.jsp">
           <table align="center" border="0">
               
               <tr>
                   <td><b>Ielts Reg No:</b></td>
                   <td><input type="text" name="reg" size="20"></td>
               </tr>
               <tr>
<td><b><i>Passport No:</b></i></td>
<td><input type="text"   name=pass size="20"></td>
               </tr>
<tr>
<td><b><i>Candidate Name:</b></i></td>
<td><input type="text"   name="candi" size="20" /></td>
</tr>
<tr>
<td><b><i>Sex:</b></i></td>
<td>Male<input type="radio"   name="rado" size="3" value="male"></td>
<td>Female<input type="radio"   name="rado" size="3" value="female"></td>
</tr>
           
          
<tr>
<d><td><i>Date Of Birth:</b></i></td>
<td><input type="text"  name=birth size="20"></td>
</tr>  
  </table>
           <table align="center">  
               <tr>
           <td><b><i>Nationality:</b></i></td>
<td><input type="text"  name=nation  size="20"></td>

</tr>
               </table>
            <table align="center">
           <tr>
<td><b><i>Date Of Exam:</b></i></td>
<td><input type="text"  name=doe size="2" /></td>
          
<td>/</td>
<td><input type="text"  name=moe size="2" /></td>
<td>/</td>
<td><input type="text"  name=yoe  size="4" /></td>
           </tr></table>
           
           <table align="center">  
     <tr>
<td><b><i>Module:</b></i></td>

<td> Education<input type="radio"  name=radi size="2"  value="education"></td>
<td>General<input type="radio"  name=radi size="2"  value="general"></td>
     </tr>
           </table> 
          <table align="center">
               <tr>
           <td><b><i>Center :</b></i></td>
<td><input type="text"   name=center size="20" ></td>
               </tr>
<tr>
<td><b><i>Repeating Ielts</b></i></td>
<td> Yes<input type="radio"  name=rad size="3"  value="yes"></td>
<td>No<input type="radio"  name=rad size="3"  value="no"></td>
</tr>
           </table>
             <table border="0" align="center">
<tr>
<td><b><i>Reading:</b></i></td>
<td><input type="text"  name=red  size="20"></td>
</tr>
                 <tr>
<td><b><i>Writing:</b></i></td>
<td><input type="text" name=wri size="20" ></td>
                 </tr>
                 <tr>
<td><b><i>Listening:</b></i></td>
<td><input type="text" name=lis size="20" ></td>
                 </tr>
                 <tr>
<td><b><i>Speaking:</b></i></td>
<td><input type="text"  name=spe  size="20" ></td>
</tr>


<tr>
<td><b><i>Overall Band Score:</b></i>
<td><input type="text" name=ova  size="20" /><font color=red>*</font></td></td>
</tr>
           </table>
          
           <br>
           <center>
               <td><input type="submit" name=submit value="SUBMIT"></td>
               &nbsp;&nbsp;<td><input type="reset" name=reset value="reset"></td>
           </center>
       </form>
    </body>
</html>
