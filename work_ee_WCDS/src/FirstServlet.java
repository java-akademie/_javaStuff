  package ch.wcds.servlets;
  import java.io.*;
  import javax.servlet.*;
  import javax.servlet.http.*;

  public class FirstServlet extends HttpServlet
  {
    public void doGet (HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException
    {
      response.setContentType("text/html");
      PrintWriter pw = response.getWriter();
      pw.println("das erste Servlet ...");

      System.out.println("das erste Servlet ...");
    }
  }
