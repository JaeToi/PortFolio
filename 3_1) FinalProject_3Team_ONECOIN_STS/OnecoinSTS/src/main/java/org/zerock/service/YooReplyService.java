package org.zerock.service;

import java.util.List;

import org.zerock.domain.YooCriteria;
import org.zerock.domain.YooReplyVO;



public interface YooReplyService {

	public int register(YooReplyVO vo);
	
	public YooReplyVO get(Long rno);
	
	public int modify(YooReplyVO vo);
	
	public int remove(Long rno);
	
	public List<YooReplyVO> getList(YooCriteria cri, Long bno);
	
}
