package com.pineapple.repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.jdbc.core.JdbcTemplate;

import com.pineapple.mapper.NoticeMapper;
import com.pineapple.vo.Notice;


public class NoticeRepImpl implements NoticeRep {
	
	private SqlSessionTemplate sessionTemplate;
	
	
	public SqlSessionTemplate getSessionTemplate() {
		return sessionTemplate;
	}

	public void setSessionTemplate(SqlSessionTemplate sessionTemplate) {
		this.sessionTemplate = sessionTemplate;
	}
	
	private NoticeMapper noticeMapper;	

	public NoticeMapper getNoticeMapper() {
		return noticeMapper;
	}

	public void setNoticeMapper(NoticeMapper noticeMapper) {
		this.noticeMapper = noticeMapper;
	}
	

	//JDBC의 구조 코드를 단순하게 만드는 스프링의 클래스 
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}


	public int insertNotice(Notice notice) {
		
		noticeMapper.insertNotice(notice);
		
		return notice.getNoticeNo();
	}
	
		
	public ArrayList<Notice> listNotice(String col, String word) {
		
		HashMap<String ,Object> params = new HashMap<String, Object>();
		params.put("col", col);
		params.put("word", word);
		List<Notice> list = noticeMapper.listNotice(params);
		
        return (ArrayList<Notice>) list;
    }
}

	

	


