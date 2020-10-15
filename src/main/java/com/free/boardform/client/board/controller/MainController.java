package com.free.boardform.client.board.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	/* 메인 화면 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		
		return "client/index";
	}
	
	/* 회원 목록 */
	@RequestMapping(value = "/clientList", method = RequestMethod.GET)
	public String clientList() {
		
		return "client/clientList";
	}

	/* 게시판 목록 */
	@RequestMapping(value = "/qnaList", method = RequestMethod.GET)
	public String qnaList() {
		
		return "client/qnaList";
	}

	/* 게시판 상세 */
	@RequestMapping(value = "/qnaBoardDetail", method = RequestMethod.GET)
	public String qnaBoardDetail() {
		
		return "client/qnaBoardDetail";
	}

	/* 게시판 쓰기 */
	@RequestMapping(value = "/qnaBoardWrite", method = RequestMethod.GET)
	public String qnaBoardWrite() {
		
		return "client/qnaBoardWrite";
	}
	
}
