package com.yedam.java.board.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.java.board.mapper.BoardMapper;
import com.yedam.java.board.service.BoardService;
import com.yedam.java.board.service.BoardVO;

@Service("boardService")
public class BoardServiceimpl implements BoardService {

	@Autowired
	BoardMapper mapper;
	
	@Override
	public BoardVO getBoardInfo(BoardVO boardVO) {
		// TODO Auto-generated method stub
		return mapper.getBoardInfo(boardVO);
	}

	@Override
	public int insertBoard(BoardVO boardVO) {
		// TODO Auto-generated method stub
		return mapper.insertBoard(boardVO);
	}

	@Override
	public int updateBoard(BoardVO boardVO) {
		// TODO Auto-generated method stub
		return mapper.updateBoard(boardVO);
	}

	@Override
	public int deleteBoard(BoardVO boardVO) {
		// TODO Auto-generated method stub
		return mapper.deleteBoard(boardVO.getBno());
	}

	@Override
	public List<BoardVO> getBoardList() {
		// TODO Auto-generated method stub
		return mapper.getBoardList();
	}

	@Override
	public int getBoardNo() {
		BoardVO vo = mapper.getBoardNo();
		return vo.getBno();
	}

}
