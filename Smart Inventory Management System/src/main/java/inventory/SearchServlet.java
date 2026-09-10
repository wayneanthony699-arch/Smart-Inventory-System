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
 * Servlet implementation class SearchServlet
 */
@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DBConnection dbc = new DBConnection();
	Statement stm = dbc.stm;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String ssearchproduct = request.getParameter("search");
		List<Products> product = new ArrayList<>();
		String sql = "SELECT * FROM products WHERE product_name LIKE '%"+ssearchproduct+"%'";
		
		try {
			ResultSet rs = stm.executeQuery(sql);
			while(rs.next()) {
				int sid = rs.getInt("id");
				int scid = rs.getInt("category_id");
				String spdname = rs.getString("product_name");
				double sprice = rs.getDouble("price");
				int sq = rs.getInt("quantity");
				int smin = rs.getInt("min_stock");
				String sdesc = rs.getString("description");
				Timestamp stime = rs.getTimestamp("created_at");
				
				Products p1 = new Products(sid,scid,spdname,sprice,sq,smin,sdesc,stime);
				product.add(p1);
			}//while
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}//catch
		request.setAttribute("product", product);
		RequestDispatcher dispatcher = request.getRequestDispatcher("ProductList.jsp");
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
