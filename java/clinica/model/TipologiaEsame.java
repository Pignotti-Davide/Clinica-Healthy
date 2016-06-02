package clinica.model;

import java.util.List;
import java.util.Map;

import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class TipologiaEsame {
	@Column(name="TIPOLOGIA_ID")
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long idTipologiaEsame;
	@Column(nullable=false)
	private String nome;
	@Column
	private String descrizione;
	@ElementCollection
	private Map<String,String> nomeRequisiti;
	@ElementCollection
	private List<String> indicatoriRisultati;
	public TipologiaEsame(){}

	public Long getIdTipologiaEsame() {
		return idTipologiaEsame;
	}

	public void setIdTipologiaEsame(Long idTipologiaEsame) {
		this.idTipologiaEsame = idTipologiaEsame;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getDescrizione() {
		return descrizione;
	}

	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}

	

	public Map<String, String> getPrerequisiti() {
		return nomeRequisiti;
	}

	public void setPrerequisiti(Map<String, String> prerequisiti) {
		this.nomeRequisiti = prerequisiti;
	}

	@Override
	public String toString() {
		return "TipologiaEsame [idTipologiaEsame=" + idTipologiaEsame + ", nome=" + nome + ", descrizione="
				+ descrizione + ", nomeRequisiti=" + nomeRequisiti + "]";
	}

	public List<String> getIndicatoriRisultati() {
		return indicatoriRisultati;
	}

	public void setIndicatoriRisultati(List<String> indicatoriRisultati) {
		this.indicatoriRisultati = indicatoriRisultati;
	}

}
