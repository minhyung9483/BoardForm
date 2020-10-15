package com.free.boardform.client.board.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.free.boardform.client.board.model.BoardVO;
import com.free.boardform.client.board.model.ReplyVO;
import com.free.boardform.common.Search;

@Repository
public class BoardDAOImpl implements BoardDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	//총 게시글 개수 확인
	@Override
	public int getBoardListCnt(Search search) throws Exception {
		return sqlSession.selectOne("com.free.boardform.client.board.boardMapper.getBoardListCnt", search);
	}
	
	//게시글 목록 조회
	@Override
	public List<BoardVO> getBoardList(Search search) throws Exception {
		return sqlSession.selectList("com.free.boardform.client.board.boardMapper.getBoardList", search);
	}

	//게시글 조회
	@Override
	public BoardVO getBoardContent(int bid) throws Exception {
		return sqlSession.selectOne("com.free.boardform.client.board.boardMapper.getBoardContent", bid);
	}

	//게시글 추가
	@Override
	public void insertBoard(BoardVO boardVO) throws Exception {
		sqlSession.insert("com.free.boardform.client.board.boardMapper.insertBoard", boardVO);
	}
	
	//게시글 수정
	@Override
	public int updateBoard(BoardVO boardVO) throws Exception {
		return sqlSession.update("com.free.boardform.client.board.boardMapper.updateBoard", boardVO);
	}
	
	//게시글 삭제
	@Override
	public int deleteBoard(int bid) throws Exception {
		return sqlSession.insert("com.free.boardform.client.board.boardMapper.deleteBoard", bid);
	}
	
	//게시글 조회수 수정
	@Override
	public int updateViewCnt(int bid) throws Exception {
		return sqlSession.update("com.free.boardform.client.board.boardMapper.updateViewCnt", bid);
	}
	
	// 댓글 리스트B
	@Override
	public List<ReplyVO> getReplyList(int bid) throws Exception {
		return sqlSession.selectList("com.free.boardform.client.board.replyMapper.getReplyList", bid);
	}

	@Override
	public int saveReply(ReplyVO replyVO) throws Exception {
		return sqlSession.insert("com.free.boardform.client.board.replyMapper.saveReply", replyVO);
	}

	@Override
	public int updateReply(ReplyVO replyVO) throws Exception {
		return sqlSession.update("com.free.boardform.client.board.replyMapper.updateReply", replyVO);
	}

	@Override
	public int deleteReply(int rid) throws Exception {
		return sqlSession.delete("com.free.boardform.client.board.replyMapper.deleteReply", rid);
	}
	// 댓글 리스트E

}