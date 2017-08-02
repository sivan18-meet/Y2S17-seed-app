<%-- 
    Document   : check_sign_up
    Author     : Layan
--%>

<%@page import="java.sql.*"%>
<%@page language="java" import="java.util.*"%>
<%@page contentType="text/html; charset=windows-1255" pageEncoding="windows-1255"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <% 
          String driver="com.mysql.jdbc.Driver";
Class.forName(driver).newInstance();
            
String url = "jdbc:mysql://localhost:3306/hytm";// שם הקישור למסד נתונים שאתם נתתם
Connection con = DriverManager.getConnection(url, "root", "root");// אובייקט שאחראי על ההתחברות למסד נתונים


//פרמטרים של הטופס שלכם לפי מה שאתם הגדרתם
String uname = request.getParameter("username");
String pass = request.getParameter("password");
String age = request.getParameter("age");
//יצירת אובייקט שאילתא
Statement state=con.createStatement();

//בניית המחרוזת בעקבות המידע שהמשתמש הכניס
String sqlStr = String.format("insert into hytm.hytm VALUES(NULL,'"+uname+"','"+pass+"','"+age+"');");
 
//ביצוע השאילתא לתוך מסד הנתונים
 int res=state.executeUpdate(sqlStr);
//התנתקות מהמסד נתונים
 con.close();

          %>
    </body>
</html>
