package com.kedu.house.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kedu.house.service.HouseService;

@Controller
@RequestMapping("/house/*")
public class HouseController {
	private static final Logger logger= LoggerFactory.getLogger(HouseController.class);
	
	@Inject
	private HouseService service;
	
	@RequestMapping(value="/houseList",method=RequestMethod.GET)
	public void listAll(Model model)throws Exception{
		logger.info("listAll!!");
		
		model.addAttribute("list",service.listAll());
	}
	
	/*
	@RequestMapping(value="/houseList",method=RequestMethod.GET)
	public void houseList(@RequestParam(required=false)String keyword,Model model) throws Exception{
		if(keyword!=null){
			model.addAttribute("list",service.searchHouse(keyword, 10, 1));
		}
	}
	*/
}
