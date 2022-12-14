package servlet.ch14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Servlet28
 */
@WebServlet("/Servlet28")
public class Servlet28 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet28() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//forward
		String path = "/WEB-INF/view/ch14/view11.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. request param 수집
		String customerName = request.getParameter("cname");
		String contactName = request.getParameter("contname");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String country = request.getParameter("country");
		//2. param 가공
		
		//3. business logic(insert into)
		String sql = "INSERT INTO Customers "
				+ "(CustomerName, ContactName, Address, City, Country) "
				+ "VALUES (?, ?, ?, ?, ?) ";
		
		ServletContext application = request.getServletContext();

		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement pstmt = con.prepareStatement(sql);){
			
			pstmt.setString(1, customerName);
			pstmt.setString(2, contactName);
			pstmt.setString(3, address);
			pstmt.setString(4, city);
			pstmt.setString(5, country);
			
			//4. 결과 확인
			int cnt = pstmt.executeUpdate();
			System.out.println(cnt);
			
			//5. forward/ redirect
			if(cnt == 1) {
				HttpSession session = request.getSession();
				session.setAttribute("message", "새 고객이 등록되었습니다.");
				
				String path = request.getContextPath() + "/Servlet23";
				response.sendRedirect(path);
//				response.sendRedirect(request.getContextPath() + "/Servlet23");
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
} //servlet 28, 23 / view 11, 7
