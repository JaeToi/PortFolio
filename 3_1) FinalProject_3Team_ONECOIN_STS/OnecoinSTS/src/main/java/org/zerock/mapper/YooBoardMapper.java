package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.YooBoardVO;
import org.zerock.domain.YooCriteria;

public interface YooBoardMapper {

	// select * from tbl_board where bno > 0;
//	@Select("select * from tbl_board where bno > 0")
	public List<YooBoardVO> getList();
	
	public void insert(YooBoardVO board);
	
	public void insertSelectKey(YooBoardVO board);
	
	public YooBoardVO read(Long bno);
	
	public int delete(Long bno);
	
	public int update(YooBoardVO board);
	
	public List<YooBoardVO> getListWithPaging(YooCriteria cri);
	
	public int getTotalCount(YooCriteria cri);
}
