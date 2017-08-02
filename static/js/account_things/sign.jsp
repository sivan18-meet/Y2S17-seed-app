<%-- 
    Document   : sign
    Created on : May 16, 2016, 6:14:45 PM
    Author     : Layan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Sign In</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
      <script type="text/javascript">


function checkF(newForm){

if(newForm.username.value < 1)

{


alert("Userame is too Short");

return false;

}


if(newForm.password.value < 1)

{


alert("Passowrd is too Short");

return false;

}




}


</script>
       </head>
   
       
                               <style>
body {
    background-image: url("images/telekom.jpg");
    background-repeat: no-repeat;
       background-attachment: fixed;
       background-position:center;
       background-size: 1290px;
}
</style>
       
       
        <style>
              ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #53006f;
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
     <font color="#7F525D"><p><h2>Sign Up:</h2></p></font>
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
                <p><td><font size="4" color="#191970">age:</td></font></p>
                            <td><select name="age">
                                    <option>10</option>
                                    <option>11</option>
                                    <option>12</option>
                                    <option>13</option>
                                    <option>14</option>
                                    <option>15</option>
                                    <option>16</option>
                                    <option>17</option>
                                    <option>18</option>
                                    <option>19</option>
                                    <option>20</option>
                                    <option>21</option>
                                    <option>22</option>
                                    <option>23</option>
                                    <option>24</option>
                                    <option>25</option>
                                    <option>26</option>
                                    <option>27</option>
                                    <option>28</option>
                        </select></td>
                </tr>
                <tr>
                <td><p><font size="4" color="#191970">gender:</td></font></p>
                    <td><input type="radio" name="gender" value="female" />Female
                    <input type="radio" name="gender" value="male" />Male
                    </td>
                </tr>
                <tr>
                <p><td><font size="4" color="#191970">email:</td></font></p>
                    <td><input type="text" name="email" value="" size="50" />
                    </td>
                </tr>
              <td><p><font size="4" color="#191970">fan level:</font></p></td>
            <td><input type="checkbox" name="level" value="ON"  selected="selected" />high
            <input type="checkbox" name="level" value="Off" selected="selected" />low
            </td>
             </tbody>
           </table>
            <input type="submit" value="submit" name="submit" />
        <input type="reset" value="reset" name="reset" />
    </form>
