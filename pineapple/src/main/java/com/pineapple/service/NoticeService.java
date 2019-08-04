package com.pineapple.service;

import java.util.List;

import com.pineapple.vo.Notice;

public interface NoticeService {

	int insertNotice(Notice notice);
	
	List<Notice> listNotice(String col, String word);


}
