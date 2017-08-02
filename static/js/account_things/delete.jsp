<%-- 
    Document   : delete
    Created on : May 17, 2016, 5:58:23 PM
    Author     : Layan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     
        
            <style>
              ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333300;
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
    
    <body>
        
        
        
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
        
        
        
        
        
   <form name="newForm" action="checksign.jsp" method="POST" onsubmit="return checkF(this)">
     <font color="#7F525D"><p><h2>Delete account:</h2></p></font>
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
                </tbody>
        </table>
    </form>
        <input action="checksign.jsp"   type="submit" value="Delete" name="Delete" />
    </body>
</html>
