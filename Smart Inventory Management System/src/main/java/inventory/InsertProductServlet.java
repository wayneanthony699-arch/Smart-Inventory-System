package inventory;

import java.io.IOException;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InsertProductServlet
 */
@WebServlet("/InsertProductServlet")
public class InsertProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DBConnection dbc = new DBConnection();
	Statement stm = dbc.stm;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//String sql = "INSERT INTO `products` (`id`, `category_id`, `product_name`, `price`, `quantity`, `min_stock`, `description`, `created_at`) VALUES (NULL, '2', 'Laptop Stand', '45000', '15', '5', 'Adjustable aluminum laptop stand', current_timestamp())";
		String sid = request.getParameter("category_id");
		String sname = request.getParameter("product_name");
		String sprice = request.getParameter("price");
		String squantity = request.getParameter("quantity");
		String sstock = request.getParameter("min_stock");
		String sdesc = request.getParameter("description");
		
		String sql = "INSERT INTO `products` (`category_id`, `product_name`, `price`, `quantity`, `min_stock`, `description`, `created_at`) VALUES ('"+sid+"', '"+sname+"', '"+sprice+"', '"+squantity+"', '"+sstock+"', '"+sdesc+"', current_timestamp())";
		
		try {
			stm.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}//catch
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("SearchProductServlet");
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
