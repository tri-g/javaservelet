package org;
import java.sql.*;
import javax.sql.DataSource;
import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/demo")
public class demo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Resource(name="jdbc/project")
	private DataSource ds;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		Connection con=null;
		Statement st=null;
		ResultSet rs=null;
		try {
			con=ds.getConnection();
			String query="select * from empdetails";
			st=con.createStatement();
			rs=st.executeQuery(query);
			while(rs.next())
			{
				out.print("<br/>"+rs.getString("name"));
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
				
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
