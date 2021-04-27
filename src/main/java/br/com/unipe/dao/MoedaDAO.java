package br.com.unipe.dao;

import java.util.LinkedList;
import java.util.List;

import org.springframework.stereotype.Repository;

import br.com.unipe.model.Moeda;

@Repository
public class MoedaDAO {
	
	private static List<Moeda> moedasConvertidas;
	
	public MoedaDAO() {
		moedasConvertidas = new LinkedList<Moeda>();
	}
	
	public void salvar(Moeda moeda) {
		moedasConvertidas.add(moeda);
	}
		
	public List<Moeda> getAll(){
		return moedasConvertidas;
	}

}
