package com.pineapple.mapper;


import java.util.HashMap;
import java.util.List;

import com.pineapple.vo.Notice;

public interface NoticeMapper {
	
	List<Notice> listNotice(HashMap<String, Object> params);

	void insertNotice(Notice notice);
	
	


}
	
