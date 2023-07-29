package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.domain.YooCriteria;
import org.zerock.domain.YooReplyVO;
import org.zerock.mapper.YooReplyMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class YooReplyServiceImpl implements YooReplyService{
	
//	@Setter(onMethod_ = @Autowired)
	private YooReplyMapper mapper;

	@Override
	public int register(YooReplyVO vo) {
		log.info("댓글 등록이 정상적으로 처리 되었습니다!" + vo);
		return mapper.insert(vo);
	}

	@Override
	public YooReplyVO get(Long rno) {
		log.info("댓글 상세보기 기능입니다!" + rno);
		return mapper.read(rno);
	}

	@Override
	public int modify(YooReplyVO vo) {
		log.info("댓글 수정 기능입니다!" + vo);
		return mapper.update(vo);
	}

	@Override
	public int remove(Long rno) {
		log.info("댓글 삭제 기능입니다!" + rno);
		return mapper.delete(rno);
	}

	@Override
	public List<YooReplyVO> getList(YooCriteria cri, Long bno) {
		log.info("댓글 목록 조회 기능입니다! " + bno);
		return mapper.getListWithPaging(cri, bno);
	}
	
}
