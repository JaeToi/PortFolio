package com.springboot.react.impl;

import java.util.List;

import com.springboot.react.model.Article;

public interface ArticleService {

	void insert(Article article);
	
	void update(Article article);
	
	void delete(Article article);
	
	Article select();
	
	List<Article> findAll(); // 글목록
}
