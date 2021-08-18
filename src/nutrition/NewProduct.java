package nutrition;
import java.sql.*;

import javax.servlet.ServletException;

import java.io.IOException;



import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class NewProduct
 */
@WebServlet("/NewProduct")
public class NewProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 Connection con=null;
     PreparedStatement ps,pst=null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewProduct() {
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
		
	String a=request.getParameter("produid");
	String b=request.getParameter("pname");
	String c=request.getParameter("ptype");
	String d=request.getParameter("pbrand");
	String e=request.getParameter("pcert");
	String f=request.getParameter("pserv");
	String g=request.getParameter("prot");
	String h=request.getParameter("pfat");
	String i=request.getParameter("pcarb");
	String j=request.getParameter("pva");
	String one=request.getParameter("pvb1");
	String k=request.getParameter("pvb2");
	String l=request.getParameter("pvb3");
	String m=request.getParameter("pvb5");
	String n=request.getParameter("pvb6");
	String o=request.getParameter("pvb7");
	String p=request.getParameter("pvb12");
	String q=request.getParameter("pvc");
	String r=request.getParameter("pvd");
	String s=request.getParameter("pve");
	String t=request.getParameter("pvk");
	String u=request.getParameter("pfol");
	String v=request.getParameter("psod");
	String w=request.getParameter("pmag");
	String x=request.getParameter("phos");
	String y=request.getParameter("potas");
	String z=request.getParameter("pcal");
	String ab=request.getParameter("pir");
	String bc=request.getParameter("piod");
	String cd=request.getParameter("pzin");
	String de=request.getParameter("pcop");
	String ef=request.getParameter("pcob");
	String fg=request.getParameter("pfib");
	String gh=request.getParameter("psal");
	String hi=request.getParameter("pener");
	String ij=request.getParameter("pcho");
	String jk=request.getParameter("psat");
	String kl=request.getParameter("poly");
	String lm=request.getParameter("pmon");
	String mn=request.getParameter("ptran");
	String no=request.getParameter("psug");
	String op=request.getParameter("pcalo");
	String pq=request.getParameter("pcaf");
	String qr=request.getParameter("pcak");
	String rs=request.getParameter("pox");
	String st=request.getParameter("pfoa");
	String tu=request.getParameter("pswe");
	String uv=request.getParameter("addin");
	con=CrudOperation.createConnection();
	try
	{
		con.setAutoCommit(false);
	String strinsert="insert into produ_nutrition(Product_id,Product_name,Product_type,Brand,Certification,Serving,Protein,Fat,Carbohydrates,Vitamin_A,Vitamin_B1,Vitamin_B2,Vitamin_B3,Vitamin_B5,Vitamin_B6,Vitamin_B7,Vitamin_B12,Vitamin_C,Vitamin_D,Vitamin_E,Vitamin_K,Folic_acid,Sodium,Magnesium,Phosphorus,Potassium,Calcium,Iron,Iodine,Zinc,Copper,Cobalt,Fibre,Salt,Energy,Cholestrol,Saturated_fat,Trans_fat,Monosaturated_fat,Polyunsaturated_fat,Sugar,Calories,Caffiene,Anti_caking_agent,Anti_oxidants,Anti_foaming_agent,Sweetening_agents,Additional_info,status) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			ps=con.prepareStatement(strinsert);
		
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setString(3, c);
			ps.setString(4, d);
			ps.setString(5, e);
			ps.setString(6, f);
			ps.setString(7, g);
			ps.setString(8, h);
			ps.setString(9, i);
			ps.setString(10, j);
			ps.setString(11, one);
			ps.setString(12, k);
			ps.setString(13, l);
			ps.setString(14, m);
			ps.setString(15, n);
			ps.setString(16, o);
			ps.setString(17, p);
			ps.setString(18, q);
			ps.setString(19, r);
			ps.setString(20, s);
			ps.setString(21, t);
			ps.setString(22, u);
			ps.setString(23, v);
			ps.setString(24, w);
			ps.setString(25, x);
			ps.setString(26, y);
			ps.setString(27, z);
			ps.setString(28, ab);
			ps.setString(29, bc);
			ps.setString(30, cd);
			ps.setString(31, de);
			ps.setString(32, ef);
			ps.setString(33, fg);
			ps.setString(34, gh);
			ps.setString(35, hi);
			ps.setString(36, ij);
			ps.setString(37, jk);
			ps.setString(38, kl);
			ps.setString(39, lm);
			ps.setString(40, mn);
			ps.setString(41, no);
			ps.setString(42, op);
			ps.setString(43, pq);
			ps.setString(44, qr);
			ps.setString(45, rs);
			ps.setString(46, st);
			ps.setString(47, tu);
			ps.setString(48, uv);
			ps.setString(49, "No_pic");
			int rw=ps.executeUpdate();
			//int rw1=pst.executeUpdate();
			if(rw>0)
			{
				System.out.println("row inserted successfully");
				con.commit();
				response.sendRedirect("/nutrition/jsp/Upload.jsp");
			
			}
	}
	catch(SQLException se)
	{
		System.out.println(se);

	}
	
			
			
	

	
	
	
	
	
	
	
	
	}

}
