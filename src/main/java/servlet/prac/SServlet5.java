package servlet.prac;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.ch14.Product;

/**
 * Servlet implementation class SServlet5
 */
@WebServlet("/SServlet5")
public class SServlet5 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SServlet5() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//상품 보여주기
		String keyword = request.getParameter("keyword");
		
		if(keyword == null) {
			keyword = "";
		}
		
		keyword = "%" + keyword + "%";
		
		String sql = "SELECT ProductID, ProductName, SupplierID, CategoryID, Unit, Price "
				+ "FROM Products "
				+ "WHERE ProductName LIKE ? ";
		
		ServletContext application = request.getServletContext();

		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement pstmt = con.prepareStatement(sql);) {
			
			pstmt.setString(1, keyword);
			
			try(ResultSet rs = pstmt.executeQuery();){
				List<Product> list = new ArrayList<>();
				while(rs.next()) {
					Product p = new Product();
					p.setName(rs.getString("productName"));
					p.setId(rs.getInt("productId"));
					p.setSupplier(rs.getInt("supplierId"));
					p.setCategory(rs.getInt("categoryId"));
					p.setUnit(rs.getString("unit"));
					p.setPrice(rs.getDouble("price"));
					
					list.add(p);
				}
				request.setAttribute("products", list);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		String path = "/WEB-INF/prac/v5.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
