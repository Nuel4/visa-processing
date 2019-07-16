<%-- 
    Document   : Ielts2.jsp
    Created on : 13 Feb, 2019, 3:36:03 PM
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
        <title>Application VIEW</title>
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
.itm:after{
    
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
.imf{margin-top: 30px; margin-bottom: 50px;}
.tbl{margin-top: 70px;}
.ie{margin-top: 50px; color: red;}
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
           
          <tr><a href="index.html"><i></td>
                      <td> <a href="index.html"><i>Visas</i></a></td>
                      <td> <a href="index.html"><i>Columbia Citizen Service</i></a></td>
                      <td><a href="index.html"><i>Our Relationship</i></a></td>
         
                      <td><a href="index.html"> <i>Business</i></a></li></td>
                      <td><a href="index.html"> <i>Education & Culture</i></td></tr>
                       <td><a href="index.html"> <i>Business</i></a></li></td>
<td><a href="index.html"> <i>Education & Culture</i></a></td></tr>
        </ul>
   
        <%!
            int pssd,x=0;
             Statement stat;
            ResultSet sul;
              Connection con;
        %>
          <%
            x=0; 
        %>
        
          <%
              try
              {
                pssd = Integer.parseInt((String) session.getAttribute("log"));
                
                   Class.forName("com.mysql.jdbc.Driver");
              con = DriverManager.getConnection("jdbc:mysql://localhost:3306/columbiacollege", "root", "root");
               stat = con.createStatement();
               sul = stat.executeQuery("select * from enrolldb where regno = "+pssd+"");
               
               if(sul.next())
               {
                   x=1;
               }
               else
               {
                   out.print("<br> Applicaion not found <br>");
                   
               }
              }
             catch(Exception el)
             {
                
                el.printStackTrace();
                
             }
              
              %>
           
              
              <%
                  if(x==1)
                  {
                %>
                <div class="inf">
                <h2 class="ie"><b><i> ielts details</i></b></h2><b>
                <form method="post">
                    <table boder="1" cellspacing="2" cellpadding="2"  class="tbl">
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
    </body>
</html>
