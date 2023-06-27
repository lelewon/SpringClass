package com.java.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.java.dto.BoardDto;

public interface BoardService {

	//게시글 전체 가져오기
	HashMap<String, Object> selectAll(int page);

	//게시글 1개 가져오기
	BoardDto selecetOne(int bno);

	//게시글 1개 저장
	void insertOne(BoardDto bdto);

	//게시글 1개 삭제
	void deleteOne(int bno);

	//게시글 1개 수정
	void updateOne(BoardDto bdto);

	//게시글 답변 달기
	void insertReplyOne(BoardDto bdto);


}
