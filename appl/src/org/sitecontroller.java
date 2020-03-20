package org;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/sitecontroller")
public class sitecontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public sitecontroller() {
        super();
      
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname=request.getParameter("name");
		String pass=request.getParameter("pw");
		if(uname.equals("tri") && pass.equals("007"))
		{
			request.getSession().invalidate();
			HttpSession hs=request.getSession(true);
			hs.setMaxInactiveInterval(300);
			response.sendRedirect("member.jsp");
		}
		else
		{
			response.sendRedirect("login.jsp");
			
		}
		
	}

}
