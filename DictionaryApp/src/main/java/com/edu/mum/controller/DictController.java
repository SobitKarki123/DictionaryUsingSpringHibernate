package com.edu.mum.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.edu.mum.model.Entry;
import com.edu.mum.service.EntriesService;
import com.google.gson.Gson;



@Controller
public class DictController {
	
	@Autowired
	EntriesService entriesService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String showMain(Model model) {
		return "dict";
	}
	
	@RequestMapping(value = "/ajax", method = RequestMethod.GET)
	@ResponseBody
	public String showResults(@RequestParam String search, Model model){
		List<Entry> entriesList = entriesService.getEntriesByWord(search);
		String jsonData = new Gson().toJson(entriesList);
		return jsonData;
	}
}

