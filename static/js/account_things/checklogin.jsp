<%-- 
    Document   : checklogin
    Created on : 17/05/2016, 09:03:03
    Author     : Layan
--%>
<%@page import="java.sql.*"%>
<%@page language="java" import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    </head>
    <body>
         <%  String driver="com.mysql.jdbc.Driver";
Class.forName(driver).newInstance();
            
String url = "jdbc:mysql://localhost:3306/hytm";// שם הקישור למסד נתונים שאתם נתתם
Connection con = DriverManager.getConnection(url, "root", "root");// אובייקט שאחראי על ההתחברות למסד נתונים


//פרמטרים של הטופס שלכם לפי מה שאתם הגדרתם
String uname = request.getParameter("username");
String pass = request.getParameter("password");

//יצירת אובייקט שאילתא
Statement state=con.createStatement();

   String sq=String.format("select * from hytm.hytm where(username='"+uname+"' and password='"+pass+"')");
            ResultSet re=state.executeQuery(sq);
            if(re!=null && re.next())
            {
                response.sendRedirect("germany.jsp");
            }
            else{
                out.println("you are not a member");
            }        
            con.close();
            %>
    </body>
</html>





