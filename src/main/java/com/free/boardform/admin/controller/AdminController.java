package com.free.boardform.admin.controller;

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
public class AdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	/* 관리자 게시판 상세보기 */
	@RequestMapping(value = "/admin/qnaBoardDetail", method = RequestMethod.GET)
	public String qnaBoardDetail() {
		
		return "admin/qnaBoardDetail";
	}
	
}
