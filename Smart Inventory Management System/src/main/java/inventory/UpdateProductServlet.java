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
 * Servlet implementation class UpdateProductServlet
 */
@WebServlet("/UpdateProductServlet")
public class UpdateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DBConnection dbc = new DBConnection();
	Statement stm = dbc.stm;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		//String sql = "UPDATE `products` SET `product_name` = 'Legal Paper', `price` = '15000.00', `quantity` = '70', `min_stock` = '15', `description` = 'Legal Copy Paper' WHERE `products`.`id` = 6";
		//String sid = "9";
		String sid = request.getParameter("product_id");
		String scategory_id = request.getParameter("category_id");
		//String sproduct_name = "Office Desk";
		String sproduct_name = request.getParameter("product_name");
		//String sprice = "250000";
		String sprice = request.getParameter("price");
		//String squantity = "50";
		String squantity = request.getParameter("quantity");
		//String smin_stock = "10";
		String smin_stock = request.getParameter("min_stock");
		//String sdescription = "Ergonomic Office Desk";
		String sdescription = request.getParameter("description");
		String sql = "UPDATE `products` SET `category_id` = '"+scategory_id+"', `product_name` = '"+sproduct_name+"', `price` = '"+sprice+"', `quantity` = '"+squantity+"', `min_stock` = '"+smin_stock+"', `description` = '"+sdescription+"' WHERE `products`.`id` = "+sid;
		
		try {
			stm.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}//catch
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("SelectServlet?product_id=" + sid);
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
