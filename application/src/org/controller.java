package org;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/controller")
public class controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public controller() {
        super();
        
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String param=request.getParameter("page");
		if(param.equals("login"))
		{
			getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
		}
		else if(param.equals("signup"))
		{
			getServletContext().getRequestDispatcher("/signup.jsp").forward(request, response);
		}
		else if(param.equals("about"))
		{
			getServletContext().getRequestDispatcher("/about.jsp").forward(request, response);
		}
		else
		{
			getServletContext().getRequestDispatcher("/notfound.jsp").forward(request, response);
		}
			
	}


	}


