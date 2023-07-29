package org.zerock.searchController;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.zerock.service.SearchService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class SearchController {
	
	private final SearchService searchService;
	
	@PostMapping("/search/autocomplete.do")
	public @ResponseBody Map<String, Object> autocomplete(@RequestParam Map<String, Object> paramMap){
		List<Map<String, Object>> resultList = searchService.autocomplete(paramMap);
		paramMap.put("resultList", resultList);
		
		return paramMap;
	}
	
	
}
