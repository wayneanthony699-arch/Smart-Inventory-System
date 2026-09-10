package inventory;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
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
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	
		String sid = "";
		String sname = "";
		String spass= "";
		String smail = "";
		sname = request.getParameter("txtname");
		spass = request.getParameter("txtpass");
		smail = request.getParameter("txtmail");
		
		String sql= "SELECT * FROM users WHERE name='"+sname+"' AND password='"+spass+"' AND email='"+smail+"' ";
		try {
			DBConnection dbc = new DBConnection();
			Statement stm = dbc.stm;
			
			ResultSet rs = stm.executeQuery(sql);
			if(rs.next()) {
				User users = new User(sid,sname,spass,smail);
				users.setId(rs.getString("id"));
	            users.setName(rs.getString("name"));
	            users.setPassword(rs.getString("password"));
	            users.setEmail(rs.getString("email"));

	            
	            RequestDispatcher dispatcher = request.getRequestDispatcher("dashboard.jsp");
	            dispatcher.forward(request, response);
	            
	            return;
			}
			else {
				 request.setAttribute("error","Incorrect username, password or email.");
			     RequestDispatcher dispatcher =request.getRequestDispatcher("loginform.jsp");
			     dispatcher.forward(request, response);
			        
			        return;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			request.setAttribute("error","Database error occurred.");
			
			 request.getRequestDispatcher("loginform.jsp").forward(request, response);
		}//catch
         
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
