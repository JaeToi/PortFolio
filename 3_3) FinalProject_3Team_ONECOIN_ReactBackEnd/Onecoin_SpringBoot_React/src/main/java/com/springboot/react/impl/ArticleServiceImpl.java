package com.springboot.react.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.springboot.react.model.Article;
import com.springboot.react.repository.ArticleRepository;

@Service("articleService")
public class ArticleServiceImpl implements ArticleService {

	@Autowired
	private ArticleRepository dao;
	
	@Override
	public void insert(Article article) {
		dao.save(article);
	}

	@Override
	public void update(Article article) {
		Article currArticle = dao.findTopByOrderByArticleIdDesc();
		currArticle.setArticleTitle(article.getArticleTitle());
		currArticle.setArticleContent(article.getArticleContent());
		dao.save(currArticle);
	}

	@Override
	public void delete(Article article) {
		dao.delete(article);
	}

	@Override
	public Article select() {
		return dao.findTopByOrderByArticleIdDesc();
	}

	@Override	// 글목록 리스트 처리 메서드 findAll() 정의
	public List<Article> findAll() {
		// 게시글 ID 기준 DESC 내림 차순 정렬값 리턴 처리 정의함
		return (List<Article>)dao.findAll(Sort.by(Sort.Direction.DESC, "articleId"));
		// 게시글 ID 기준 ASC 오름 차순 정렬값 리턴 처리 정의함
//		return (List<Article>)dao.findAll(Sort.by(Sort.Direction.ASC, "articleId"));
	}

}
