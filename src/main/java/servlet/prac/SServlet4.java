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

import domain.ch14.Customer;

/**
 * Servlet implementation class SServlet4
 */
@WebServlet("/SServlet4")
public class SServlet4 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SServlet4() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. request param 수집
		String idStr = request.getParameter("id");
		
		idStr = idStr == null ? "0" : idStr;
		
		//2. 가공
		int id = Integer.parseInt(idStr);
		
		//3. business logic
		String sql = "SELECT CustomerName, City, Country "
				+ "FROM Customers "
				+ "WHERE CustomerID = ? ";
		
		ServletContext application = request.getServletContext();

		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement pstmt = con.prepareStatement(sql);){
			
			pstmt.setInt(1, id);
			
			try(ResultSet rs = pstmt.executeQuery(sql);){
				//4. 결과 확인/ add attribute
				List<Customer> list = new ArrayList<>();
				while(rs.next()) {
					Customer c = new Customer();
					c.setName(rs.getString("customerName"));
					c.setCity(rs.getString("city"));
					c.setCountry(rs.getString("country"));
					
					list.add(c);
				}
				request.setAttribute("customers", list);
			} 
		} catch(Exception e) {
			e.printStackTrace();
		}
		//5. forward/redirect
		String path = "/WEB-INF/prac/v4.jsp";
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
