package org.zerock.service;

import java.util.List;

import org.zerock.domain.YooBoardVO;
import org.zerock.domain.YooCriteria;




public interface YooBoardService {

	public void register(YooBoardVO board);
	
	public YooBoardVO get(Long bno);
	
	public boolean modify(YooBoardVO board);
	
	public boolean remove(Long bno);
	
//	public List<BoardVO> getList();
	
	public List<YooBoardVO> getList(YooCriteria cri);
	
	public int getTotal(YooCriteria cri);
	
}
