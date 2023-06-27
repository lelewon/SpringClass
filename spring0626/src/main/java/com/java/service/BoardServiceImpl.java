package com.java.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.BoardDto;
import com.java.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardMapper boardMapper;
	
	@Override
	public HashMap<String, Object> selectAll(int page) {
		
		HashMap<String, Object> map = new HashMap<>();
				
		
		//게시글 전체개수
		int listCount = boardMapper.selectListCount();
		//최대 페이지
		int maxPage = (int)Math.ceil((double)listCount/10); // 33/10 4개 page
		int startPage = (int)((page-1)/10)*10 + 1; //1-10
		int endPage = startPage+10-1;
		int startRow = (page-1)*10+1; //1page -> 1-10, 2page -> 11-20
		int endRow = startRow+10-1;
		
		System.out.println("BoardServiceImpl listCount : "+listCount);
		System.out.println("BoardServiceImpl page : "+page);
		System.out.println("BoardServiceImpl maxpage : "+maxPage);
		System.out.println("BoardServiceImpl startPage : "+startPage);
		System.out.println("BoardServiceImpl endPage : "+endPage);
		System.out.println("BoardServiceImpl startRow : "+startRow);
		System.out.println("BoardServiceImpl endRow : "+endRow);
		
		//endPage가 최대페이지 보다 더 크면 최대페이지까지만 노출
		if(endPage>maxPage) endPage=maxPage;
		ArrayList<BoardDto> list = boardMapper.selectAll(startRow,endRow); 
		
		map.put("list",list);
		map.put("listCount",listCount);
		map.put("maxPage",maxPage);
		map.put("startPage",startPage);
		map.put("endPage",endPage);
		map.put("page",page);
		
		return map;
	}

	@Override
	public BoardDto selecetOne(int bno) {
		//게시글 1개 가져오기
		BoardDto bdto = boardMapper.selectOne(bno);
		return bdto;
		
	}

	@Override
	public void insertOne(BoardDto bdto) {
		//게시글 1개 저장
		boardMapper.insertOne(bdto);
	}

	@Override
	public void deleteOne(int bno) {
		//게시글 1개 삭제
		boardMapper.deleteOne(bno);
	}

	@Override
	public void updateOne(BoardDto bdto) {
		//게시글 1개 수정
		boardMapper.updateOne(bdto);
	}

	@Override
	public void insertReplyOne(BoardDto bdto) {
		// 게시글 답변 달기
		System.out.println("service insertReplyOne : "+bdto.getBgroup());
		boardMapper.updateBstepCount(bdto);
		boardMapper.insertReplyOne(bdto);
	}


}
