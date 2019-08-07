package com.pineapple.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.pineapple.vo.Question;
import com.pineapple.vo.QuestionComment;
import com.pineapple.vo.QuestionFile;

public interface QuestionService {

	int registerQuestion(Question question);

	void registerQuestionFile(QuestionFile questionFile);

	ArrayList<Question> findQuestions();

	Question findQuestionByQuestionNo(int questionNo);

	List<QuestionFile> findQuestionFilesByQuestionNo(int questionNo);

	QuestionFile findQuestionFileByQuestionFileNo(int questionFileNo);

	void deleteQuestion(int questionNo);

	void deleteQuestionFile(int fileNo);

	void updateQuestion(Question question);

	void readCount(int questionNo);

	/* ==================================================== */

	void writeComment(QuestionComment comment);

	void deleteComment(int commentNo);

	void updateComment(QuestionComment comment);

	List<QuestionComment> findCommentListByQuestionNo(int questionNo);

	void writeRecomment(QuestionComment comment);

	List<Question> findQuestionlist(String category);

	List<QuestionComment> findCommentListByQuestionNoWithPaging(HashMap<String, Object> params);

	int findCommentsCountByQuestionNo(int questionNo);

}
