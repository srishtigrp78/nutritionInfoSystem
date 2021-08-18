package nutrition;
import java.sql.*;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import nutrition.CrudOperation;

/**
 * Servlet implementation class logincheck
 */
@WebServlet("/logincheck")
public class logincheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;  
	HttpSession hs,hsi=null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public logincheck() {
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
		String ui= request.getParameter("userid");
		String upass=request.getParameter("pass");
		String c=request.getParameter("utype");
		String strsql="select * from login where User_id=? and Password=? and User_type=?";
		con=CrudOperation.createConnection();
		try{
			hs=request.getSession();
			hs.setAttribute(c,ui);
			hsi=request.getSession();
			hsi.setAttribute("userid", ui);
			ps=con.prepareStatement(strsql);
			ps.setString(1,ui);
			ps.setString(2,upass);
			ps.setString(3,c);
			System.out.println(ps);
			rs=ps.executeQuery();
			if(rs.next())
			{
				System.out.println("authenticated");
				String ut=rs.getString("User_type");
				if(ut.equals("Admin"))
				{
					response.sendRedirect("/nutrition/jsp/Admin.jsp");
				}
				if(ut.equals("Consumer"))
				{
					response.sendRedirect("/nutrition/jsp/Consumer.jsp");
				}
			}
			else
			{
				response.sendRedirect("/nutrition/jsp/Login.jsp?msg=<b><font color:'red'>invalid userid or password</font></b>");
			}
		}
		catch(SQLException se){
			System.out.println(se);
		}
				
			}
	}


