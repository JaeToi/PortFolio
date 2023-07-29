package org.zerock.repository;



import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class SearchRepository {

	
	private final SqlSession sql;
	
	public List<Map<String, Object>> autocomplete(Map<String, Object> paramMap) {
		
		return sql.selectList("Search.autocomplete", paramMap);
	}
	

	
}
