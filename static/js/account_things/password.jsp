<%-- 
    Document   : password
    Created on : May 16, 2016, 7:08:23 PM
    Author     : Layan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Change Password</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

         
        <style>
            
            body{
                
                background-color:grey;
            }
              ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #999966;
}

li {
    float:left;
}

li a {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover {
    background-color:#53006f;
}
        </style>
    </head>
   
    
    
    
    <ul>
      <li><a href="index.html">Home</a></li>
  <li><a href="squad.jsp">Squad</a></li>
  <li><a href="bundesliga.jsp">Bundesliga</a></li>
  <li><a href="allianz.jsp">Allianz Arena</a></li>
   <li><a href="top.jsp">Top Scorers</a></li>
    <li><a href="uefa.jsp">Uefa</a></li>
      <li><a href="dfb.jsp">DFB-Pokal</a></li>
   <li><a href="sign.jsp">Sign Up</a></li>
    <li><a href="login.jsp">Log in</a></li>
     <li><a href="password.jsp">Change Password</a></li>
      <li><a href="delete.jsp">Delete Account</a></li>

         
       
        
        </ul>
    
    
    
<form name="newForm" action="checkpassword.jsp" method="POST" onsubmit="return checkF(this)">
     <font color="#7F525D"><p><h2>Change Password:</h2></p></font>
        <table>
            <tbody>
                <tr>
            <p><td><font size="4" color="#191970">username:</td></font></p>
                    <td><input type="text" name="username" value="" size="50" onsubmit="return checkF(this)" /></td>
                </tr>
                
                <tr>
                <td><p><font size="4" color="#191970">password:</td></font></p>
                    <td><input type="password" name="password" value="" size="50" onsubmit="return checkF(this)" /></td>
                </tr>
                 <tr>
                <td><p><font size="4" color="#191970">new password:</td></font></p>
                    <td><input type="password" name="new password" value="" size="50" onsubmit="return checkF(this)" /></td>
                </tr>
                            </tbody>
                 </table>
                    <input type="submit" value="submit" name="submit" />
        <input type="reset" value="reset" name="reset" />
    </body>
</html>
