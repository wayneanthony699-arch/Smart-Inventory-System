package inventory;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SelectServlet
 */
@WebServlet("/SelectServlet")
public class SelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DBConnection dbc = new DBConnection();
	Statement stm = dbc.stm;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		Products p1 = null;

		String sid = request.getParameter("product_id");

		String sql = "SELECT * FROM products WHERE id = " + sid;

		try {
		    ResultSet rs = stm.executeQuery(sql);

		    if (rs.next()) {

		        int id = rs.getInt("id");
		        int category_id = rs.getInt("category_id");
		        String product_name = rs.getString("product_name");
		        double price = rs.getDouble("price");
		        int quantity = rs.getInt("quantity");
		        int min_stock = rs.getInt("min_stock");
		        String description = rs.getString("description");
		        Timestamp stime = rs.getTimestamp("created_at");

		        p1 = new Products(
		            id,
		            category_id,
		            product_name,
		            price,
		            quantity,
		            min_stock,
		            description,
		            stime
		        );
		    }

		} catch (SQLException e) {
		    e.printStackTrace();
		}
		request.setAttribute("p1", p1);
		RequestDispatcher dispatcher = request.getRequestDispatcher("updateform.jsp");
		dispatcher.forward(request, response);

	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
