package com.kedu.board.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kedu.board.dto.BoardPageMaker;
import com.kedu.board.dto.BoardSearchCriteria;
import com.kedu.board.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardSearchBoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardSearchBoardController.class);
	
	@Inject
	private BoardService service;
	
	@RequestMapping(value = "/listPage", method = RequestMethod.GET)
	public void listPage(@ModelAttribute("cri") BoardSearchCriteria cri, Model model) throws Exception {
		
		logger.info(cri.toString());
		
		model.addAttribute("list", service.listCriteria(cri));
		
		BoardPageMaker pageMaker = new BoardPageMaker();
		pageMaker.setCri(cri);
		
		pageMaker.setTotalCount(service.listCountCriteria(cri));
		
		model.addAttribute("BoardPageMaker", pageMaker);
	}
}
