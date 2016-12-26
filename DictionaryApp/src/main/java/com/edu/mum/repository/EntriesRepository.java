package com.edu.mum.repository;

import java.io.Serializable;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.edu.mum.model.Entry;

@Repository
public interface EntriesRepository extends JpaRepository<Entry, Serializable>{

	public List<Entry> findByWord(String word);
	
}
