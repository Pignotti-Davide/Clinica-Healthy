package clinica.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import clinica.dao.impl.PazienteDaoImpl;
import clinica.model.Esame;
import clinica.model.Paziente;
@Service
public class FacadePaziente {

	@Autowired
	private PazienteDaoImpl pazienteDaoImpl;
	public void addPaziente(Paziente p){
		pazienteDaoImpl.insertPaziente(p);
	}
	public List<Paziente> findAll(){
		return this.pazienteDaoImpl.findAll();
	}
	public Paziente retrievePaziente(long id){
		return this.pazienteDaoImpl.findPaziente(id);
	}
	public List<Esame> listaEsami(long id){
		return this.pazienteDaoImpl.listaEsami(id);
	}
	public void deletePaziente(long id) {
		this.pazienteDaoImpl.deletePaziente(id);
		
	}
}
