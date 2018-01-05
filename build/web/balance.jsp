<%-- 
    Document   : balance
    Created on : Aug 8, 2017, 11:20:47 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Global Banking ..</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function ctck()
{
var sds = document.getElementById("dum");

}
</script>

    </head>
    <body>
    <div id="top_links">
  

<div id="header">
	<h1>TOMAR - BANK<span class="style1"></span></h1>
    <h2>ExtraOrdinary Service</h2>
    <A href="index.html"><IMG SRC="images/home1.gif"></A>	
</div>

<div id="navigation">
    <ul>
    <li><a href="create.html">NEW ACCOUNT</a></li>
    <li><a href="balance1.jsp">BALANCE</a></li>
    <li><a href="deposit1.jsp">DEPOSIT</a></li>
    <li><a href="withdraw1.jsp">WITHDRAW</a></li>
    <li><a href="closeac1.jsp">CLOSE A/C</a></li>
    <li><a href="about.jsp">Contact Us</a></li>
    </ul>
</div>



<table style="width:897px; background:#FFFFFF; margin:0 auto;">
<tr >
	<td width="300" valign="top" style="border-right:#666666 1px dotted;">
    	<div id="services"><h1>Services</h1><br>
		    <ul>
        	<li><a href="#">Link will be provide later.</a></li>
            <li><a href="#">Link will be provide later.</a></li>
            <li><a href="#">Link will be provide later.</a></li>
            </ul>
			
       </div>
	</td>
    
    <td width="1200" valign="top">
    	
    	<% 
%>
<table><%
     String accountno=request.getParameter("accountno");

        String username=request.getParameter("username");
		String password=request.getParameter("password");
	   // boolean status=verifyLogin1.checkLogin(accountno,username,password);
		//if(status==true){
		//	out.print("Welcome    " + username);
		try {
		// if(status==true){
			out.print("Welcome    " + username);
		Class.forName("com.mysql.jdbc.Driver");
                
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
                        
			PreparedStatement ps=conn.prepareStatement("Select * from NEWACCOUNT where accountno=?");
            ps.setString(1,accountno);
			ResultSet rs=ps.executeQuery();
			
			out.print("<table align='left' cellspacing='5' cellpadding='5'>");
			out.print("<tr><th>ACCOUNT NO</th><th>USERNAME</th><th>AMOUNT</th><th>ADDRESS</th><th>PHONE</th></tr>");
			while(rs.next()){
			    String accountno1=rs.getString(1);
				session.setAttribute("accountno",accountno1);
				
				System.out.print(accountno);
				
				out.print("<tr>");
				out.print("<td>" + rs.getString(1) + "</td>");
				out.print("<td>" + rs.getString(2) + "</td>");
				out.print("<td>" + rs.getString(5) + "</td>");
				out.print("<td>" + rs.getString(6) + "</td>");
				out.print("<td>" + rs.getString(7) + "</td>");
				out.print("</tr>");
			
			}
			out.print("</table>");
			
		//	else{
		//	out.print("Please check your username and Password");
		//	request.setAttribute("balance","Please check your username and Password");
		//	%>
	<%--	//	<jsp:forward page="balance1.jsp"></jsp:forward> --%> 
		//	<% 
		//	}
			
		}
		 catch (SQLException e) {
			e.printStackTrace();
		}
		
		//}
		
			//} 
			%></table><%
%>
    	
    	
		</table>


<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*"%>

  

    </body>
</html>
