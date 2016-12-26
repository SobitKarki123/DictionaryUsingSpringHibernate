package com.edu.mum.service;

import java.util.List;

import javax.persistence.Entity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.edu.mum.model.Entry;
import com.edu.mum.repository.EntriesRepository;

@Service
@Transactional
public class EntriesService {
	
	@Autowired
	EntriesRepository entriesRepository;

	public EntriesService(EntriesRepository entriesRepository) {
		super();
		this.entriesRepository = entriesRepository;
	}
	
	public EntriesService(){}

	public void setEntriesRepository(EntriesRepository entriesRepository) {
		this.entriesRepository = entriesRepository;
	}
	
	public List<Entry> getEntriesByWord(String word){
		return entriesRepository.findByWord(word);
	}
	
	
}
