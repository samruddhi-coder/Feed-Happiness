package com.ngo.registration.in;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class DonarRegistrationServlet
 */
@WebServlet("/DonarRegistrationServlet")
public class DonarRegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DonarRegistrationServlet() {
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
		
		String name=request.getParameter("name");
		String add=request.getParameter("address");
		String cont=request.getParameter("contact");
		String email=request.getParameter("email");
		String city=request.getParameter("city");
		String pass=request.getParameter("password");
		
		DonarRegistrationDAO cd=new DonarRegistrationDAO();
		boolean s=cd.insert(name,add,city,cont,email,pass);
		if(s==true)
		{
			 RequestDispatcher view = request.getRequestDispatcher("login.jsp");
				view.forward(request, response);
		}
		else
		{
			 out.println("<script type=\"text/javascript\">");
			 out.println("alert('insert unsuccessfully !!!');");
			 out.println("location='donor_registration.jsp';");
			 out.println("</script>");
		}
	}

}
