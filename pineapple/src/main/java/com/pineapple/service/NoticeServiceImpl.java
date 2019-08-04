package com.pineapple.service;

import java.util.List;

import com.pineapple.repository.NoticeRep;
import com.pineapple.vo.Notice;

public class NoticeServiceImpl implements NoticeService {


	private NoticeRep noticeRep;

	public NoticeRep getNoticeRep() {
		return noticeRep;
	}

	public void setNoticeRep(NoticeRep noticeRep) {
		this.noticeRep = noticeRep;
	}

	@Override
	public List<Notice> listNotice(String col, String word) {
		
		List<Notice> notice = noticeRep.listNotice(col, word);
		
		return notice;
	}

	@Override
	public int insertNotice(Notice notice) {
		int newNoticeNo = noticeRep.insertNotice(notice);

		return newNoticeNo;
			
	}
}
