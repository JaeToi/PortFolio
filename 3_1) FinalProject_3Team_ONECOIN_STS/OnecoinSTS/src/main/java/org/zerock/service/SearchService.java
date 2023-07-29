package org.zerock.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.zerock.repository.SearchRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class SearchService {
	
	private final SearchRepository searchRepository;
	
	public List<Map<String, Object>> autocomplete(Map<String,Object> paramMap){
		return searchRepository.autocomplete(paramMap);
	}
}
