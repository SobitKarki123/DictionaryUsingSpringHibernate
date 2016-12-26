package com.edu.mum.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
public class Entry {
	@Id
	private int id;
	private String word;
	private String wordtype;
	private String definition;

	public String getWord() {
		return word;
	}

	public void setWord(String word) {
		this.word = word;
	}


	public String getWordtype() {
		return wordtype;
	}

	public void setWordtype(String wordtype) {
		this.wordtype = wordtype;
	}

	public String getDefinition() {
		return definition;
	}

	public void setDefinition(String definition) {
		this.definition = definition;
	}

}
