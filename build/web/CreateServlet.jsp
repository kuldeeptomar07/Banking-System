<%-- 
    Document   : CreateServlet
    Created on : Aug 7, 2017, 1:18:43 AM
    Author     : user
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%  
           String accountno=request.getParameter("accountno");
                String username=request.getParameter("username");
		String password=request.getParameter("password");
		String  repassword=request.getParameter("repassword");
		
		String amount=request.getParameter("amount");	
		String adderess=request.getParameter("adderess");
		
		String phone=request.getParameter("phone");

try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
Statement stmt = conn.createStatement();

stmt.executeUpdate("insert into newaccount(accountno,username,password,repassword,amount,adderess,phone) values('"+accountno+"' ,'"+username+"','"+password+"','"+repassword+"','"+amount+"','"+adderess+"','"+phone+"')");
out.println("Data is Inserted");

}catch(Exception e)
{
out.println("Your error is" + e);
}    
   


       
       %>
    </body>
</html>
