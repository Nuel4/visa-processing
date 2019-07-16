<%-- 
    Document   : EnrolForm.jsp
    Created on : 22 Feb, 2019, 4:14:07 PM
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
    </head>
    
        
        <%!
            int tregno,f;
Connection con;
Statement stmt;
ResultSet sul = null;
            %>
            <%
                f=0;
                tregno = Integer.parseInt((String) session.getAttribute("log"));
                %>
                <%
try
{

Class.forName("com.mysql.jdbc.Driver");
con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/columbiacollege","root","root");


stmt=con.createStatement();


sul=stmt.executeQuery("select  *  from enrolldb where regno= "+tregno);
if(sul.next())
{
    f=1;
}
else
{
    out.print("<br> apllication not found <br>");
}
}
catch(Exception t)
{
    t.printStackTrace();
}
%>

        <%
          if(f==1)
          {
           %>
           
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
.enr{margin-top: 30px; color: brown;}
.rol{color: white;padding: 15px;}
.fom{margin-top: 30px;padding-top: 30px;font-family: sans-serif;font-size: 25px;align-content: center;}
.fm{margin-top: 15px;font-size: 30px;}
        </style>
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
   <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
 <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>  
    </head>


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
           
          <tr>
          <ul>
                      <td> <a href="index.html"><i>Visas</i></a></td>
                      <td> <a href="index.html"><i>Columbia  Citizen Service</i></a></td>
                      <td><a href="index.html"><i>Our Relationship</i></a></td>
         
                      <td><a href="index.html"> <i>Business</i></a></li></td>
                      <td><a href="index.html"> <i>Education & Culture</i></a></td>
                       <td><a href="index.html"> <i>Business</i></a></li></td>
<td><a href="index.html"> <i>Education & Culture</i></a></td>
          </ul></tr></div>
    <h1 class="enr" align="center">APPLICANT ENROLLMENT FORM!</h1>
        <form method="post">
        <table border="" align="center">
            <th>
                
                INTERNATIONAL STUDENT<BR> ENROLlMENT FORM SUBMITTED
            </th>
            <br><br>
           
           
                        
                        <table boder="1" width="">
                            <h4 align="center">  Date:<%= new java.util.Date() %></h4>
                            <br>
                           
                            <tr>
                            <form method="post">
                    <table class="fom" align="center" boder="1" cellspacing="2" cellpadding="2"  class="tbl">
                        <div>
                            <tr>
                            <td> RegNo:</td>
                            <td><input type="text" name="regno" size="20" disabled value=<%= sul.getString("regno") %>></td>
                            </tr></div>
                           
                            <div><tr>
                            <td>Password:</td>
                            <td><input type="password" name="pas" disabled value="<%= sul.getString("pwd") %>"></td>
                                </tr></div>
                                <div><tr>
                            <td>Surname:</td>
                            <td><input type="text" name="nam" disabled  value="<%=sul.getString("surname") %>" > </td>
                                    </tr> </div>
                                    <div><tr>
                            <td>Given Name:</td>
                            <td><input type="text" name="given" disabled  value="<%=sul.getString("givname") %>" > </td>
                                        </tr></div>
                                        <div><tr>
                            <td>DOB:</td>
                            <td><input type="text" name="birth" disabled  value="<%=sul.getString("dob") %>" > </td>
                                            </tr></div>
                                            <div><tr>
                            <td>Sex:</td>
                            <td><input type="text" name="se" disabled  value="<%=sul.getString("sex") %>" > </td>
                                                </tr></div>
                                                <div><tr>
                            <td>Academic Qualification</td>
                            <td><input type="text" name="ac" disabled  value="<%=sul.getString("academic") %>" > </td>
                                                    </tr></div>
                                                    <div><tr>
                            <td>Place Of Birth</td>
                            <td><input type="text" name="pl" disabled  value="<%=sul.getString("placeb") %>" > </td>
                                                        </tr></div>
                                                        <div><tr>
                            <td>Address</td>
                            <td><input type="text" name="ad" disabled  value="<%=sul.getString("address") %>" > </td>
                                                            </tr></div>
                                                            <div><tr>
                            <td>Home Country</td>
                            <td><input type="text" name="hm" disabled  value="<%=sul.getString("country") %>" > </td>
                                                                </tr></div>
                                                                <div><tr>
                            <td>Phone</td>
                            <td><input type="text" name="ph" disabled  value="<%=sul.getString("phone") %>" > </td>
                                                                    </tr></div>
                                                                    <div><tr>                                     
                            <td>Mobile</td>
                            <td><input type="text" name="mo" disabled  value="<%=sul.getString("mobile") %>" > </td>
                                                                        </tr></div>
                                                                        <div><tr>
                            <td>Fax</td>
                            <td><input type="text" name="fa" disabled  value="<%=sul.getString("fax") %>" > </td>
                                                                            </tr></div>
                                                                            <div><tr>
                            <td>Email</td>
                            <td><input type="text" name="emi" disabled  value="<%=sul.getString("email") %>" > </td>
                        </tr>
                                                                            </div>
                   
                        
                        
                            <div><tr>
                                <td>Course:</td>
                                <td><input type="text" name="cos"  disabled value="<%=sul.getString("course")%>"></td>
                                </tr>  </div>  
                                <div><tr>
                                <td>Level Of Study:</td>
                                <td><input type="text" name="cet" disabled value="<%=sul.getString("cert")%>"></td>
                                    </tr> </div> 
                                    <div><tr>
                                <td> Have You Studied English?:</td>
                                <td> <input type="text" name="eng" disabled  value="<%=sul.getString("english")%>" > </td>
                                        </tr> </div>
                                        <div><tr>
                                <td>If Yes, How Long?</td>
              
                                <td><input type="text" name="rpet"  disabled value="<%=sul.getString("period")%>"></td>
                                            </tr> </div>
                                            <div><tr>
                                <td>Have You Passes Ielts?</td>
                                <td><input type="text" name="pet"   disabled value="<%=sul.getString("ielts")%>"></td>
                                                </tr></div>
                                                
                                                <div><tr>
                                <td> Which Test?</td>
                            <td><input type="text" name="wh" disabled  value="<%=sul.getString("result") %>" > </td>
                                                    </tr></div>
                                                    <div><tr>
                            <td>Score</td>
                            <td><input type="text" name="se" disabled  value="<%=sul.getString("score") %>" > </td>
                                                        </tr></div> 
                        
                           
                                <div> <tr>
                                   <td>Relative's Name In The USA</td>
                            <td><input type="text" name="re" disabled  value="<%=sul.getString("rname") %>" > </td> 
                                    </tr></div>
                                    <div><tr>
                            <td>Relationship</td>
                            <td><input type="text" name="rel" disabled  value="<%=sul.getString("relate") %>" > </td>
                                        </tr></div>
                                        <div><tr>
                            <td>Address</td>
                            <td><input type="text" name="ads" disabled  value="<%=sul.getString("addr") %>" > </td>
                                            </tr></div>
                                            <div><tr>
                            <td>Relatives Phone No:</td>
                            <td><input type="text" name="ph" disabled  value="<%=sul.getString("ph") %>" > </td>
                                                </tr></div>
                                                <div><tr>
                            <td>Occupation: </td>
                            <td><input type="text" name="occ" disabled  value="<%=sul.getString("office") %>" > </td>
                            </tr></div>
                            <div><tr>
                            <td>Office Address:</td>
                            <td><input type="text" name="of" disabled  value="<%=sul.getString("offad") %>" > </td>
                                </tr></div>
                                
                            </table>
                          
        </form>
          <%
             
        }
     %>
       
     <div class="fm" align="center">
           <form method="post" action="AdminA_R.jsp">
               
               Accept<input type="radio" name="rdb" value="1"><br>
               Reject <input type="radio" name="rdb" value="2"><br>
              
    <center> <input type="submit" name="submit" value="submit"></center>
          
            
           </form>
     </div>
         
         

    </body>
</html>
