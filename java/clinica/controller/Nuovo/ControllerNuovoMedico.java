package clinica.controller.Nuovo;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;

import clinica.model.Medico;

@Controller
public class ControllerNuovoMedico extends HttpServlet {


	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// gestione della RICHIESTA

		// leggo e manipolo i parametri
		String nome = request.getParameter("nome_Medico");
		String cognome=request.getParameter("cognome_Medico");
		String specializzazione=request.getParameter("specializzazione_Medico");
	
		
		//  verifico i dati

		boolean erroriPresenti = false;
		String nextPage="/protected/medicoinserito.jsp";
		System.out.println(nome);
		if(nome.isEmpty()){
			erroriPresenti=true;
			
			request.setAttribute("nomeError", "Campo obbligatorio");
		}
		if(specializzazione.equals("")){
			erroriPresenti=true;
			request.setAttribute("cognomeError", "Campo obbligatorio");
		}
		if(cognome.equals("")){
			erroriPresenti=true;
			request.setAttribute("specializzazioneError", "Campo obbligatorio");
		}
		if(erroriPresenti){
			nextPage  = "/protected/nuovoMedico.jsp";
		}
		// tutti i dati corretti
		Medico med = new Medico();
		med.setCognome(cognome);
		med.setNome(nome);
		med.setSpecializzazione(specializzazione);

		

		ServletContext application  = getServletContext();
		HttpSession session= request.getSession();
		session.setAttribute("med", med);
		String urlNextPage = response.encodeURL(nextPage);
		RequestDispatcher rd = application.getRequestDispatcher(urlNextPage);
		rd.forward(request, response);
		
	}
	

}