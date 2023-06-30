package com.java.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.BoardDto;
import com.java.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardMapper boardMapper;
	
	@Override //게시글 전체 가져오기
	public ArrayList<BoardDto> selectAll() {
		ArrayList<BoardDto> list = new ArrayList<>();
		//게시글 전체 가져오기
		list = boardMapper.selectAll();
		
		return list;
	}

}
