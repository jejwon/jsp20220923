package servlet.prac;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import domain.ch14.Product;

/**
 * Servlet implementation class SServlet6
 */
@WebServlet("/SServlet6")
public class SServlet6 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SServlet6() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idParam = request.getParameter("id");
		int id = Integer.parseInt(idParam);
		
		
		
		String sql = "SELECT ProductName, "
					+ "SupplierID, "
					+ "CategoryID, "
					+ "Unit, "
					+ "Price "
					+ "FROM Products "
					+ "WHERE ProductID = ? ";
		
		
		ServletContext application = request.getServletContext();

		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setInt(1, id);
			try(ResultSet rs = pstmt.executeQuery();){
				if(rs.next()) {
					Product p = new Product();
					p.setName(rs.getString("productName"));
					p.setId(rs.getInt("ProductId"));
					p.setSupplier(rs.getInt("supplier"));
					p.setCategory(rs.getInt("category"));
					p.setUnit(rs.getString("unit"));
					p.setPrice(rs.getDouble("price"));
					
					request.setAttribute("product", p);
				}
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		String path = "/WEB-INF/prac/v6.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String productName = request.getParameter("productName");
		String supplierStr = request.getParameter("supplierStr");
		String categoryStr = request.getParameter("categoryStr");
		String unit = request.getParameter("unit");
		String priceStr = request.getParameter("price");
		String idStr = request.getParameter("idStr");
		
		int supplier = Integer.parseInt(supplierStr);
		int category = Integer.parseInt(categoryStr);
		Double price = Double.parseDouble(priceStr);
		int id = Integer.parseInt(idStr);
		
		
		String sql = "UPDATE Products "
				+ "SET  ProductName = ?, "
				+ "SupplierID = ?, "
				+ "CategoryID = ?, "
				+ "Unit = ?, "
				+ "Price = ? "
				+ "WHERE ProductID = ? ";
		
		ServletContext application = request.getServletContext();
		
		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement pstmt = con.prepareStatement(sql);){
			
			
			
			pstmt.setString(1, productName);
			pstmt.setInt(2, supplier);
			pstmt.setInt(3, category);
			pstmt.setString(4, unit);
			pstmt.setDouble(5, price);
			pstmt.setInt(6, id);
			
			int cnt = pstmt.executeUpdate();
			if(cnt == 1) {
				HttpSession session = request.getSession();
				session.setAttribute("message", "상품 정보가 수정되었습니다.");
		}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		response.sendRedirect(request.getContextPath() + "/SServlet5");
	}

}
