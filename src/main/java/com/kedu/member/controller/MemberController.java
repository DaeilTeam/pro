package com.kedu.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	
	@RequestMapping(value="/input",method=RequestMethod.GET)
	public void memberInput(Model model)throws Exception{
		logger.info("회원가입창");
	}

	@RequestMapping(value="/login",method=RequestMethod.GET)
	public void memberLogin(Model model)throws Exception{
		logger.info("회원가입창");
	}
	@RequestMapping(value="/main",method=RequestMethod.GET)
	public void memberL(Model model)throws Exception{
	}
	@RequestMapping(value="/face",method=RequestMethod.GET)
	public void memberF(Model model)throws Exception{
	}
}
