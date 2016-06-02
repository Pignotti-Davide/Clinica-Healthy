package clinica.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import clinica.dao.impl.UtenteDao;
import clinica.model.Utente;

@Service
public  class FacadeAutenticazione {
	
	@Autowired
	private UtenteDao utenteDaoJpa;
	
		public Utente login(String username, String password){
			Utente u=utenteDaoJpa.retrieve(username);
			System.out.println(u.getRole());
			return u;
		}
	}
