<%-- 
    Document   : PassForm.jsp
    Created on : 16 Feb, 2019, 7:39:07 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PASSPORT DETAILS</title>
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
.pp{margin-top: 40px;font-family: sans-serif;font-size: 25px; margin-bottom: 70px;color: brown; padding-top: 25px; display: ruby-base;}


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
                      <td> <a href="index.html"><i>Visas</i></a></td>
                      <td> <a href="index.html"><i>Columbia Citizen Service</i></a></td>
                      <td><a href="index.html"><i>Our Relationship</i></a></td>
         
                      <td><a href="index.html"> <i>Business</i></a></li></td>
                      <td><a href="index.html"> <i>Education & Culture</i></a></td></tr>
                       <td><a href="index.html"> <i>Business</i></a></li></td>
<td><a href="index.html"> <i>Education & Culture</i></a></td></tr>
        </ul>
        <center> <h1 class="pp">PASSPORT DETAILS!</h1></center>
    <form method="post" action="PassConfirmed.jsp">
            <center> 
                
                    <table bgcolor="lightgrey" border="1" width="500" cellspacing='2' cellpadding="2">
			<tr>
						<td><b><i>Registered No:</b></I></td>
						<td><input type="text" name="nu" id="first name1" size="20"></td>
					</tr>
                                        		
                        <tr>
						<td><b><i>Passport Number:</b></I></td>
						<td><input type="text" name="passno" id="first name1" size="20"></td>
					</tr>
                                        
                                        <tr>
						<td><b><i>Name:</b></I></td>
						<td><input type="text" name="passname" id="first name1" size="20"></td>
					</tr>
                                         
					<tr>
						<td><b><i>Date Of Birth:</b></I></td>
						<td><input type="text" name="doi1" id="state1" size="2">
					
						<input type="text" name="do2" id="state2" size="2">
					
						<input type="text" name="doi3" id="state3" size="4"></td>
					</tr>
                                         
					<tr>
						<td><b><i>Place Of Issue:</b></I></td>
<td><input type="text" name="poissue" id="first name4" size="15"></td>
					</tr>
					<tr>
                                            <td><b><i>Authorized Signatory Name:</b></td>
						<td><input type="text" name="authsign" id="first name5" size="20"></td>
					</tr>
                
					<tr>
						<td><b><i>Date Of Issue:</b></I></td>
						<td><input type="text" name="i1" id="state1" size="2">
						
						<input type="text" name="i2" id="state2" size="2">
						
						<input type="text" name="i3" id="state3" size="4"></td>
					</tr>
                                       
					<tr>
						<td><b><i>Date Of Expiration:</b></I></td>
						<td><input type="text" name="di1" id="state1" size="2">
						
						<input type="text" name="di2" id="state2" size="2">
						
						<input type="text" name="di3" id="state3" size="4"></td>
					</tr>
                    </table>
            <center>
                <br><input type="submit" name="submit" value="SUBMIT">
            </center>
        </form>
    </body>
</html>
