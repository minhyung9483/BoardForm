package com.free.boardform.client.board.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.free.boardform.client.board.model.BoardVO;
import com.free.boardform.client.board.model.ReplyVO;
import com.free.boardform.client.board.service.BoardService;
import com.free.boardform.common.Search;

@Controller
@RequestMapping(value = "/board")
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Inject
	private BoardService boardService;
	
	@RequestMapping(value = "/getBoardList", method = RequestMethod.GET)
	public String getBoardList(Model model
			, @RequestParam(required = false, defaultValue = "1") int page
			, @RequestParam(required = false, defaultValue = "1") int range
			, @RequestParam(required = false, defaultValue = "title") String searchType
			, @RequestParam(required = false) String keyword
			) throws Exception {
		
		Search search = new Search();
		search.setSearchType(searchType);
		search.setKeyword(keyword);
		
		//전체 게시글 개수
		int listCnt = boardService.getBoardListCnt(search);
		
		search.pageInfo(page, range, listCnt);
					
	    //Pagination 객체생성
	   	model.addAttribute("pagination", search);
		model.addAttribute("boardList", boardService.getBoardList(search));
		return "client/board/index";
	}
	
	/* 게시글 등록 폼 */
	@RequestMapping("/boardForm")
	public String boardForm(@ModelAttribute("boardVO") BoardVO vo, Model model) {
		return "client/board/boardForm";
	}
	
	/* 게시글 저장 & 수정 둘 다 수행 */
	@RequestMapping(value = "/saveBoard", method = RequestMethod.POST)
	public String saveBoard(@ModelAttribute("BoardVO") BoardVO boardVO, @RequestParam("mode") String mode, RedirectAttributes rttr) throws Exception {
		//Content 내용중 줄바꿈 <br>태그로 변환
		//System.out.println("first:"+boardVO.getContent());
		boardVO.setContent(boardVO.getContent().replace("\r\n<p>&nbsp;</p>\r\n","<br>")); //한줄 띄움시 <p>&nbsp;</p> 제거
		//System.out.println("1:"+boardVO.getContent());
		boardVO.setContent(boardVO.getContent().replace("<p>","")); //첫 저장시 줄마다 <p> 태그 제거
		//System.out.println("2:"+boardVO.getContent());
		boardVO.setContent(boardVO.getContent().replace("</p>\r\n","")); //첫 저장시 줄마다 </p> 태그 제거
		//System.out.println("3:"+boardVO.getContent());
		boardVO.setContent(boardVO.getContent().replace("<br />","")); //수정시 <br /> 태그 제거
		//System.out.println("4:"+boardVO.getContent());
		boardVO.setContent(boardVO.getContent().replace("\r\n","<br>")); //줄띄움 <br> 태그로 대체
		//System.out.println("5:"+boardVO.getContent());
		boardVO.setContent(boardVO.getContent().replace("<ol><br>\t","<ol>")); // <ol> 사용시 <br> 제거
		//System.out.println("6:"+boardVO.getContent());
		boardVO.setContent(boardVO.getContent().replace("<ul><br>\t","<ul>")); // <ul> 사용시 <br> 제거
		//System.out.println("7:"+boardVO.getContent());
		boardVO.setContent(boardVO.getContent().replace("</li><br>\t","</li>")); // </li> 사용시 <br> 제거
		//System.out.println("8:"+boardVO.getContent());
		boardVO.setContent(boardVO.getContent().replace("</ol><br>","</ol>")); // <ol> 사용시 <br> 제거
		//System.out.println("9:"+boardVO.getContent());
		boardVO.setContent(boardVO.getContent().replace("</ul><br>","</ul>")); // <ul> 사용시 <br> 제거
		//System.out.println("10:"+boardVO.getContent());
		boardVO.setContent(boardVO.getContent().replace("\"","\'")); // <ul> 사용시 <br> 제거
		//System.out.println("last:"+boardVO.getContent());

		if (mode.equals("edit")) { //게시글 수정
			boardService.updateBoard(boardVO);
		} else { //게시글 저장
			boardService.insertBoard(boardVO);
		}
		
		return "redirect:getBoardList";
	}
	
	/* 게시글 상세보기 */
	@RequestMapping(value = "/getBoardContent", method = RequestMethod.GET)
	public String getBoardContent(Model model, @RequestParam("bid") int bid) throws Exception {
		model.addAttribute("boardContent", boardService.getBoardContent(bid));
		model.addAttribute("replyVO", new ReplyVO());
		
		return "client/board/boardContent";
	}

	/* 게시글 수정 폼 */
	@RequestMapping(value = "/editForm", method = RequestMethod.GET)
	public String editForm(@RequestParam("bid") int bid , @RequestParam("mode") String mode, Model model) throws Exception {
		model.addAttribute("boardContent", boardService.getBoardContent(bid));
		model.addAttribute("mode", mode);
		model.addAttribute("boardVO", new BoardVO());
		System.out.println(boardService.getBoardContent(bid).getContent());
		return "client/board/boardForm";
	}
	
	/* 게시글 삭제 */
	@RequestMapping(value = "/deleteBoard", method = RequestMethod.GET)
	public String deleteBoard(RedirectAttributes rttr, @RequestParam("bid") int bid) throws Exception {
		boardService.deleteBoard(bid);
		return "redirect:getBoardList";
	}		
	
	/* 예외 처리 */
	/*
	 * @ExceptionHandler(RuntimeException.class) public String
	 * exceptionHandler(Model model, Exception e){ logger.info("exception : " +
	 * e.getMessage()); model.addAttribute("exception", e); return
	 * "error/exception"; }
	 */

}