package com.pineapple.repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.pineapple.vo.Review;
import com.pineapple.vo.ReviewComment;
import com.pineapple.vo.ReviewFile;

public interface ReviewRep {

	
	void insertReviewFile(ReviewFile file);

	List<Review> selectReviews();

	Review selectReview(int reviewNo);

	ArrayList<ReviewFile> selectReviewFile(int reviewNo);

	ReviewFile selectReviewFileByReviewFileNo(int fileNo);

	ArrayList<ReviewFile> selectReviewFilesByReviewNo(int reviewNo);

	Review selectReviewByReviewNo(int reviewNo);

	void deleteReview(int reviewNo);

	void deleteReviewFile(int fileNo);

	void updateReview(Review review);

	int insertReview(Review review);

	void updateCount(int reviewNo);
	
	/* ==================================================== */
	
	void insertComment(ReviewComment comment);
	
	void updateComment(ReviewComment comment);

	void deleteComment(int commentNo);

	ArrayList<ReviewComment> selectCommentsByReviewNo(int reviewNo);
	
	ReviewComment selectCommentByCommentNo(int commentNo);
	
	void updateCommentStep(ReviewComment comment);
	
	void insertRecomment(ReviewComment comment);

	List<Review> selectReviewlist(String category);

	int countReviewList();


}