package com.pineapple.mapper;


import java.util.HashMap;
import java.util.List;

import com.pineapple.vo.Question;
import com.pineapple.vo.QuestionComment;
import com.pineapple.vo.QuestionFile;

//이 인터페이스의 패키지와 인터페이스 이름은 member-mapper.xml 파일의 namespace와 일치
public interface QuestionMapper {
	
	Question selectQuestion(int questionNo);
	List<Question> selectQuestions();
	
	Question selectQuestionByQuestionNo(int questionNo);
	
	List<QuestionFile> selectQuestionFilesByQuestionNo(int questionNo);
	
	QuestionFile selectQuestionFileByQuestionFileNo(int questionFileNo);
	
	void deleteQuestion(int questionNo);
	
	void insertQuestion(Question question);
	
	void insertQuestion2(Question question);
	
	void insertQuestionFile(QuestionFile file);

	void deleteQuestionFile(int questionFileNo);
	
	void updateQuestion(Question question);
	
	void updateCount(int questionNo);
	
	/* ==================================================== */

	void insertComment(QuestionComment comment);
	
	void updateComment(QuestionComment comment);

	void deleteComment(int commentNo);

	List<QuestionComment> selectCommentsByQuestionNo(int questionNo);
	List<QuestionComment> selectCommentsByQuestionNoWithPaging(HashMap<String, Object> params);
	int selectCommentsCountByQuestionNo(int questionNo);
	
	void updateCommentStep(QuestionComment comment);
	
	void insertRecomment(QuestionComment comment);
	QuestionComment selectCommentByCommentNo(int commentNo);
	
	List<Question> selectQuestionlist(HashMap<String, Object> params);
	 

}
	
