package com.ngoregistration.in;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ngo.registration.in.DonarRegistrationDAO;

/**
 * Servlet implementation class NGORegistrationServlet
 */
@WebServlet("/NGORegistrationServlet")
public class NGORegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NGORegistrationServlet() {
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
		String reg_no=request.getParameter("reg_no");
		String catagory1=request.getParameter("cloth");
		String catagory2=request.getParameter("grain_food");
		String catagory3=request.getParameter("cooked_food");
		String catagory4=request.getParameter("other");
//		 out.println("<script type=\"text/javascript\">");
//		 out.println("alert('"+catagory1+" "+catagory2+" "+catagory3+" "+catagory4+"');");
//		 out.println("location='ngo_registration.jsp';");
//		 out.println("</script>");
		
		ngoregistrationdao cd=new ngoregistrationdao();
		boolean s=cd.insert( name,add,city,cont,email,reg_no,pass,catagory1,catagory2,catagory3,catagory4);
		if(s==true)
		{
			 RequestDispatcher view = request.getRequestDispatcher("login.jsp");
				view.forward(request, response);
		}
		else
		{
			 out.println("<script type=\"text/javascript\">");
			 out.println("alert('insert unsuccessfully !!!');");
			 out.println("location='ngo_registration.jsp';");
			 out.println("</script>");
		}
	}

}
