package com.free.boardform.client.board.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.free.boardform.client.board.dao.BoardDAO;
import com.free.boardform.client.board.model.BoardVO;
import com.free.boardform.client.board.model.ReplyVO;
import com.free.boardform.common.Search;

@Service
public class BoardServiceImpl implements BoardService{

	@Inject
	private BoardDAO boardDAO;
	
	//총 게시글 개수 확인
	@Override
	public int getBoardListCnt(Search search) throws Exception {
		return boardDAO.getBoardListCnt(search);
	}
	
	//게시글 목록 조회
	@Override
	public List<BoardVO> getBoardList(Search search) throws Exception {
		return boardDAO.getBoardList(search);
	}

	//게시글 조회
	@Override
	public BoardVO getBoardContent(int bid) throws Exception{
		return boardDAO.getBoardContent(bid);
	}
	
	//게시글 등록
	@Override
	public void insertBoard(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		boardDAO.insertBoard(boardVO);
	}
	
	//게시글 수정
	@Override
	public int updateBoard(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		return boardDAO.updateBoard(boardVO);
	}

	//게시글 삭제
	@Override
	public int deleteBoard(int bid) throws Exception {
		// TODO Auto-generated method stub
		return boardDAO.deleteBoard(bid);
	}
	
	//게시글 조회수 수정
	@Override
	public int updateViewCnt(int bid) throws Exception {
		// TODO Auto-generated method stub
		return boardDAO.updateViewCnt(bid);
	}

	// 댓글 리스트B
	@Override
	public List<ReplyVO> getReplyList(int bid) throws Exception {
		return boardDAO.getReplyList(bid);
	}

	@Override
	public int saveReply(ReplyVO replyVO) throws Exception {
		return boardDAO.saveReply(replyVO);
	}

	@Override
	public int updateReply(ReplyVO replyVO) throws Exception {
		return boardDAO.updateReply(replyVO);
	}

	@Override
	public int deleteReply(int rid) throws Exception {
		return boardDAO.deleteReply(rid);
	}
	// 댓글 리스트E

}
