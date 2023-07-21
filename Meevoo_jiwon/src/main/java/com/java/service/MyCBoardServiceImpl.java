package com.java.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.CListCurrDto;
import com.java.dto.CListJoinDto;
import com.java.dto.CListPickDto;
import com.java.dto.PageDto;
import com.java.mapper.MyCBoardMapper;

@Service
public class MyCBoardServiceImpl implements MyCBoardService {

	@Autowired MyCBoardMapper myCBoardMapper;
	
	@Override //운동모임 - 찜한 리스트 전체 가져오기
	public HashMap<String, Object> selectClubPickAll(PageDto pageDto) {
		HashMap<String, Object> map = new HashMap<>();
		
		//페이지정보 메소드호출
		pageDto = pageMethod1(pageDto);
		
		//게시글 전체 가져오기
		ArrayList<CListPickDto> list = myCBoardMapper.selectClubPickAll(pageDto);
		
		map.put("list", list);
		map.put("pageDto", pageDto);
		
		return map;
	}
	
	//찜한 리스트 페이지정보 메소드
	public PageDto pageMethod1(PageDto pageDto) {
		
		//전체 게시글 수 저장
		pageDto.setListCount(myCBoardMapper.selectListCPick());
		//최대 넘버링 페이지
		pageDto.setMaxPage((int)Math.ceil((double)pageDto.getListCount()/10));
		//시작 넘버링 페이지
		pageDto.setStartPage((int)((pageDto.getPage()-1)/10)*10+1);
		//끝 넘버링 페이지
		pageDto.setEndPage(pageDto.getStartPage()+10-1);
		//시작번호
		pageDto.setStartRow((pageDto.getPage()-1)*10+1);
		//끝나는번호
		pageDto.setEndRow(pageDto.getStartRow()+10-1);
		
		return pageDto;
	}

	@Override //운동모임 - 최근본 리스트 전체 가져오기
	public HashMap<String, Object> selectClubCurrAll(PageDto pageDto) {
		HashMap<String, Object> map = new HashMap<>();
		
		//페이지 정보 메소드 호출
		pageDto = pageMethod2(pageDto);
		
		ArrayList<CListCurrDto> list = myCBoardMapper.selectClubCurrAll(pageDto);
		
		map.put("list", list);
		map.put("pageDto", pageDto);
		
		return map;
	}
	
	//찜한 리스트 페이지정보 메소드
		public PageDto pageMethod2(PageDto pageDto) {
			
			//전체 게시글 수 저장
			pageDto.setListCount(myCBoardMapper.selectListCCurr());
			//최대 넘버링 페이지
			pageDto.setMaxPage((int)Math.ceil((double)pageDto.getListCount()/10));
			//시작 넘버링 페이지
			pageDto.setStartPage((int)((pageDto.getPage()-1)/10)*10+1);
			//끝 넘버링 페이지
			pageDto.setEndPage(pageDto.getStartPage()+10-1);
			//시작번호
			pageDto.setStartRow((pageDto.getPage()-1)*10+1);
			//끝나는번호
			pageDto.setEndRow(pageDto.getStartRow()+10-1);
			
			return pageDto;
		}

		@Override //운동모임 - 참여한 리스트 전체 가져오기
		public ArrayList<CListJoinDto> selectClubJoinAll() {
			ArrayList<CListJoinDto> list = myCBoardMapper.selectClubJoinAll();
			return null;
		}

}
