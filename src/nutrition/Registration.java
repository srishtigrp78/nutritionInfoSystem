package nutrition;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nutrition.CrudOperation;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String ui=request.getParameter("userid");
		String upass=request.getParameter("pass");
		String un=request.getParameter("uname");
		String ugender=request.getParameter("gender");
		int ua=Integer.parseInt(request.getParameter("txtage"));
		int uh=Integer.parseInt(request.getParameter("txthe"));
		int uw=Integer.parseInt(request.getParameter("txtwe"));
		String ue=request.getParameter("txtemail");
		String uail=request.getParameter("ail");
		String up=request.getParameter("upro");
		
		Connection con=null;
		PreparedStatement pslogin,psreg,pst=null;
		con=CrudOperation.createConnection();
		try
		{
			con.setAutoCommit(false);
			
			String strsql="select * from registration where User_id=?";
			String Strlogin="insert into login values(?,?,?)";
		 String Strreg="insert into registration values(?,?,?,?,?,?,?,?,?,?,?)";
			
			pst=con.prepareStatement(strsql);
			pst.setString(1,ui);
			ResultSet rs=pst.executeQuery();
			System.out.println(pst);
			if(rs.next())
			{
				PrintWriter pw=response.getWriter();
				pw.println("userid exists");
			}
		 pslogin=con.prepareStatement(Strlogin);
		pslogin.setString(1,ui);
		pslogin.setString(2,upass);
		pslogin.setString(3,"Consumer");
		int rw=pslogin.executeUpdate();
		psreg=con.prepareStatement(Strreg);
		psreg.setString(1,ui);
		psreg.setString(2,upass);
		psreg.setString(3, "Consumer");
		psreg.setString(4,un);
		psreg.setString(5,ugender);
		psreg.setInt(6,ua);
		psreg.setInt(7,uh);
		psreg.setInt(8,uw);
		psreg.setString(9,ue);
		psreg.setString(10,uail);
		psreg.setString(11,up);
		
		
		int rw1=psreg.executeUpdate();
		if(rw>0 && rw1>0)
			{
				System.out.println("row inserted successfully");
				con.commit();
				response.sendRedirect("/nutrition/jsp/Login.jsp?msg='<b>'Registration done successfully!Thank you'</b>'");
			}
	}
				catch(SQLException se)
				{
					System.out.println(se);
			
				}
	}
	
	

}
