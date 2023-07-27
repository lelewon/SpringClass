package com.java.service;

import java.util.ArrayList;

import java.util.HashMap;

import com.java.dto.SListCurrDto;
import com.java.dto.SportDto;
import com.java.dto.SportPickDto;
import com.java.dto.SportReviewDto;
import com.java.dto.SportReviewReportDto;

public interface SportService {
	
	// 1. 게시글 전체 가져오기
	HashMap<String, Object> selectAll(int page);
	// 2. 게시글 1개 가져오기
	HashMap<String, Object> selectOne(int sfno);

	
	// 1. 게시글 하단 리뷰 전체 가져오기
	ArrayList<SportReviewDto> selectReAll(int sfno);
	// 2. 게시글 리뷰 저장하기
	SportReviewDto reviewInsert(SportReviewDto sreDto);
	// 3. 게시글 하단 리뷰 1개 삭제하기
	void reviewDelete(int sreno);
	// 4. 수정한 하단 리뷰 저장
	SportReviewDto reviewUpdateSave(SportReviewDto sreDto);
	
	
	// 리뷰글에 대한 신고글 1개 작성
	void insertReportOne(SportReviewReportDto srerepDto);
	//리뷰글 번호 가져오기
	HashMap<String, Object> selectSrenoOne(int sreno);

	
	
	// 찜하기 목록 전체 가져오기
	ArrayList<SportPickDto> selectSpAll(int sfno);
	// 1. 시설물 찜하기 등록
	SportPickDto sportPick(SportPickDto spickDto);
	// 2. 시설물 찜하기 취소(업뎃)
	SportPickDto sportPickCancel(SportPickDto spickDto);
	// 3. 시설물 다시 찜하기(업뎃)
	SportPickDto sportPickUpdate(SportPickDto spickDto);
	

	
	
//	// 게시글 전체 가져오기
//	ArrayList<SportDto> selectAll();
//
//	// 게시글 1개 가져오기
//	SportDto selectOne(int fcltyno);

	
	
	//최근본 시설 게시물 데이터 기록하기
	void insertSCurr(SListCurrDto scurrdto);
}
