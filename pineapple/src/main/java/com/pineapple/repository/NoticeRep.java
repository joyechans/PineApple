package com.pineapple.repository;

import java.util.ArrayList;

import com.pineapple.vo.Notice;

public interface NoticeRep {


	ArrayList<Notice> listNotice(String col, String word);

	int insertNotice(Notice notice);



}