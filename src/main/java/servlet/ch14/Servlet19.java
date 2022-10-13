package servlet.ch14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
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
 * Servlet implementation class Servlet19
 */
@WebServlet("/Servlet19")
public class Servlet19 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet19() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql = "SELECT CustomerID, CustomerName, Country, City, Address FROM Customers";
		
		// 3. business logic (jdbc로 query 실행)
		ServletContext application = request.getServletContext();

		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);) {
			
			List<Customer> list = new ArrayList<>();
			while(rs.next()) {
				
				//수정 사항 발생o -> column label로 작성 가능 
				/* String customerName = rs.getString(1); */
				int id = rs.getInt("customerID");//대소문자 구별 안함
				String customerName = rs.getString("customerName");
				String country = rs.getString("country");
				String city = rs.getString("city");
				String address = rs.getString("address");
				
				Customer customer = new Customer();
				customer.setId(id);
				customer.setName(customerName);
				customer.setCountry(country);
				customer.setCity(city);
				customer.setAddress(address);
				
				list.add(customer);
			}
			
			request.setAttribute("customers", list);
		} catch(Exception e) {
			e.printStackTrace();
		}
		String path = "/WEB-INF/view/ch14/view07.jsp";
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
