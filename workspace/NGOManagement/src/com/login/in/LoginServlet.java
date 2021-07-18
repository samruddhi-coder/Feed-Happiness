package com.login.in;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		
		

		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String email=request.getParameter("email");
		String pass=request.getParameter("password");
		String type=request.getParameter("type");
		out.println("<script type=\"text/javascript\">");
		 out.println("alert('"+type+"');");
		 out.println("location='login.jsp';");
		 out.println("</script>");
		logindao l=new logindao();
		int check=l.check(email, pass,type);
		if(check!=0)
		{
			if(type.equals("1"))
			{
				HttpSession session=request.getSession();
				session.setAttribute("id", check);
				session.setAttribute("type", type);
				response.sendRedirect("donar_home.jsp");
			}
			else{
				HttpSession session=request.getSession();
				session.setAttribute("id", check);
				session.setAttribute("type", type);
				response.sendRedirect("ngo_home.jsp");
			}
		}
		else
		{
			out.println("<script type=\"text/javascript\">");
			 out.println("alert('login Unsuccessfull !!!');");
			 out.println("location='login.jsp';");
			 out.println("</script>");
		}
	}

}
