//package clinica.controller;
//
//import java.io.IOException;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletContext;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import org.springframework.stereotype.Controller;
//
//import clinica.model.Paziente;
//
//
///**
// * Servlet implementation class ControllerPaziente
// */
//@Controller
//public class ControllerPaziente extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//
//	/**
//	 * @see HttpServlet#HttpServlet()
//	 */
//	public ControllerPaziente() {
//		super();
//
//		// TODO Auto-generated constructor stub
//	}
//
//	/**
//	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//		String codiceUtente=request.getParameter("username");
//
//		boolean erroriPresenti = false;
//		String nextPage=null;
//		//verifica dati
////				if (p==null){
//			erroriPresenti=true;
//			request.setAttribute("codiceNonTrovato", "Il codice inserito non � stato trovato");
////		}
////		if(erroriPresenti){
////			nextPage  = "/accessorisultati.jsp";
////		}
//
//		//tutto ok... allora:
//		ServletContext application  = getServletContext();
//		HttpSession session= request.getSession();
//		session.setAttribute("paziente", p);
//		String urlNextPage = response.encodeURL("/elencoEsamiPaziente.jsp");
//		RequestDispatcher rd = application.getRequestDispatcher(urlNextPage);
//		rd.forward(request, response);
//
//	}
//
//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}
//
//}
