
import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.Naming;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class CreateServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
                String accountno =request.getParameter("accountno");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String  repassword=request.getParameter("repassword");
		
		String amount=request.getParameter("amount");
	 //	double amount=Double.parseDouble(amoun);
		
		String adderess=request.getParameter("adderess");
		
		String phone=request.getParameter("phone");
	//	double phone=Double.parseDouble(ph);
		//double mname=Double.parseDouble(num);
		//String country=request.getParameter("country");
	
                try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
                PreparedStatement ps = conn.prepareStatement("insert into newaccount values(?,?,?,?,?,?,?)");
                ps.setString(1,accountno);
                ps.setString(2, username);
                ps.setString(3, password);
                ps.setString(4,repassword);
                ps.setString(5,amount);
                ps.setString(6, adderess);
                ps.setString(7,phone);
                int i = ps.executeUpdate();
                if (i > 0)
                out.print("Your account is created...Please Go Back...");
                
                }catch(Exception e)
                {
                out.print("Your error is" + e);
                }
                
                
	/*    int status=RegisterUser.register(username, password, repassword, amount, adderess,phone);
	   
	    
		if(status>0){
			out.print("WELCOME! YOUR ACCOUNT HAS OPENED");
			RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
			rd.include(request, response);
		}
		else{
			out.print("Sorry,Registration failed. please try later");
			RequestDispatcher rd=request.getRequestDispatcher("MyHtml.html");
			rd.include(request, response);
		}
	*/	
	out.close();	
	}

}
