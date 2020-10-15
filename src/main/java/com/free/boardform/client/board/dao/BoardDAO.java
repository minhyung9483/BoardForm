package com.free.boardform.client.board.dao;

import java.util.List;

import com.free.boardform.client.board.model.BoardVO;
import com.free.boardform.client.board.model.ReplyVO;
import com.free.boardform.common.Search;

public interface BoardDAO {

	//총 게시글 개수 확인
	public int getBoardListCnt(Search search) throws Exception;

	public List<BoardVO> getBoardList(Search search) throws Exception;
	
	public BoardVO getBoardContent(int bid) throws Exception;
	
	public void insertBoard(BoardVO boardVO) throws Exception;
	
	public int updateBoard(BoardVO boardVO) throws Exception;
	
	public int deleteBoard(int bid) throws Exception;
	
	public int updateViewCnt(int bid) throws Exception;
	
	// 댓글 리스트
	public List<ReplyVO> getReplyList(int bid) throws Exception;
	
	public int saveReply(ReplyVO replyVO) throws Exception;
	
	public int updateReply(ReplyVO replyVO) throws Exception;
	
	public int deleteReply(int rid) throws Exception;

}