package controladores;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Servlet implementation class registro
 */

@WebServlet("/register")
public class registro extends HttpServlet {
	private static final long serialVersionUID = 1L;
		/* metodo doPost */
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/* obtenemos los datos de la request getparameter */
		String unombre = request.getParameter("nombre");
		String uapellido = request.getParameter("apellido");
		String utelefono = request.getParameter("telefono");
		String uemail = request.getParameter("email");
		String upwd = request.getParameter("contrasena");
		String uciudad = request.getParameter("ciudad");
		String uprovincia = request.getParameter("provincia");
		String ucodpostal = request.getParameter("codpost");
		RequestDispatcher disp = null;
		Connection con = null;
		
	
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto?useSSL=false", "root", "locolindo");
			final String STATEMENT = "insert into clientes (nombre, apellido, telefono, email, contrasena, ciudad, provincia, codpostal) values (?,?,?,?,?,?,?,?)";
			PreparedStatement pst = con.prepareStatement(STATEMENT);
			pst.setString(1, unombre);
			pst.setString(2, uapellido);
			pst.setString(3, utelefono);
			pst.setString(4, uemail);
			pst.setString(5, upwd);
			pst.setString(6, uciudad);
			pst.setString(7, uprovincia);
			pst.setString(8, ucodpostal);
			
			int rowCount = pst.executeUpdate();
			disp = request.getRequestDispatcher("login.jsp");
			if (rowCount > 0) {
				request.setAttribute("status", "success");
			} else {
				request.setAttribute("status", "failed");
			}
			
			disp.forward(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try  {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
	}
	

}
