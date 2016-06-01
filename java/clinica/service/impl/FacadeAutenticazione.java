package clinica.service.impl;
import javax.persistence.EntityManager;

import clinica.dao.impl.Connessione;
import clinica.model.Utente;

public  class FacadeAutenticazione {
	private EntityManager em;
		public Utente login(String username, String password){
			Connessione.getInstance().getEm().getTransaction().begin();
			Utente u= 	Connessione.getInstance().getEm().find(Utente.class, username);
			Connessione.getInstance().getEm().getTransaction().commit();
			Connessione.getInstance().getEm().clear();				
			System.out.println(username);
			System.out.println(password);
			
			System.out.println(u);
			return u;
		}
		public EntityManager getEm() {
			return em;
		}
		public void setEm(EntityManager em) {
			this.em = em;
		}
		
	}
