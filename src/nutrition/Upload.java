package nutrition;

import java.sql.*;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;


import java.sql.Connection;

import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class Upload
 */
@WebServlet("/Upload")
public class Upload extends HttpServlet {
	private static final long serialVersionUID = 1L;
      Connection con=null;
     PreparedStatement ps,pst,psta=null;
          /**
     * @see HttpServlet#HttpServlet()
     */
    public Upload() {
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
		response.setContentType("text/html");
		
		
		String path=getServletContext().getRealPath("/");
		
	//ServletContext sc=getServletContext();
	//String path=sc.getRealPath("/");
	PrintWriter out=response.getWriter();
	out.println(path);
	
	String ui="scott@";// this is a folder in the server
	String  newpath=path+"/"+ui;
	File f=new File(newpath);
	if(!f.exists())				//if file does not exists make directory
	{
		f.mkdir();
	}
	out.println("dir created");
	
	
	
			
			
			
			
			MultipartRequest mpt=new MultipartRequest(request,newpath,1024*1024*6,new DefaultFileRenamePolicy());//if DefaultFileRenamePolicy is used ur older image will not be overwritten,and a new pic will be uploaded with the name mypic(1).jpg
	out.println("pic uploaded");
	
	String controlname=null;
	String filename=null;
	File fileobj=null;
	Enumeration e=mpt.getFileNames();		//enumeration is an interface in util package
	while(e.hasMoreElements())
	{
		controlname=(String)e.nextElement();
		System.out.println(controlname);
		fileobj=mpt.getFile(controlname);
		filename=fileobj.getName();
	}
	out.println("actualname is"+filename);
	String strinsert="insert into product_pic(userid,picname,status) values(?,?,?)";
	con=CrudOperation.createConnection();
	
	try
	{
		
		ps=con.prepareStatement(strinsert);
		ps.setString(1,ui);
		ps.setString(2,filename);
		ps.setString(3,"Not_assigned");
	    
				int rw=ps.executeUpdate();
	
		if(rw>0)
		{
			System.out.println("1 row inserted");
			response.sendRedirect("/nutrition/jsp/Assign.jsp?msg=<b><font color:'red'>invalid userid or password</font></b>");
		}
		String strsel="select picid from product_pic where picname=?";
		pst=con.prepareStatement(strsel);
		pst.setString(1,filename);
		ResultSet rst=pst.executeQuery();
		if(rst.next())
		{
		String q=rst.getString("picid");
		
		String stri="insert into produ_nutrition(picid) values(?)";
		psta=con.prepareStatement(stri);
		psta.setString(1,q);
		int rw1=psta.executeUpdate();
			if(rw1>0)
			{
			System.out.println("produ_nutrition table updated successully");
			}
		}

	}
	catch(SQLException se)
	{
		System.out.println(se);
	}
	
	
			//fileobj will give the name of the file
	}

}
