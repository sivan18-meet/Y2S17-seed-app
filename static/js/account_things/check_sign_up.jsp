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
            
String url = "jdbc:mysql://localhost:3306/hytm";// ùí ä÷éùåø ìîñã ðúåðéí ùàúí ðúúí
Connection con = DriverManager.getConnection(url, "root", "root");// àåáéé÷è ùàçøàé òì ääúçáøåú ìîñã ðúåðéí


//ôøîèøéí ùì äèåôñ ùìëí ìôé îä ùàúí äâãøúí
String uname = request.getParameter("username");
String pass = request.getParameter("password");
String age = request.getParameter("age");
//éöéøú àåáéé÷è ùàéìúà
Statement state=con.createStatement();

//áðééú äîçøåæú áò÷áåú äîéãò ùäîùúîù äëðéñ
String sqlStr = String.format("insert into hytm.hytm VALUES(NULL,'"+uname+"','"+pass+"','"+age+"');");
 
//áéöåò äùàéìúà ìúåê îñã äðúåðéí
 int res=state.executeUpdate(sqlStr);
//äúðú÷åú îäîñã ðúåðéí
 con.close();

          %>
    </body>
</html>
