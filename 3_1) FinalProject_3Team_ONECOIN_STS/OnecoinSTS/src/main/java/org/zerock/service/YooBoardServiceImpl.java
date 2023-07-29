package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.YooBoardVO;
import org.zerock.domain.YooCriteria;
import org.zerock.mapper.YooBoardMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;


@Log4j
@Service
//@AllArgsConstructor
public class YooBoardServiceImpl implements YooBoardService{

	// Spring 4.3 이상에서는 자동 처리
	@Setter(onMethod_ = @Autowired)
	private YooBoardMapper mapper;

	@Override
	public void register(YooBoardVO board) {
		log.info("글등록 처리 테스트입니다===>" + board);
		
		mapper.insertSelectKey(board); //mapper를 이용해서 DB에 넣는다
	}

	@Override
	public YooBoardVO get(Long bno) {
		log.info("글상세조회 기능이 구현됩니다!" + bno);
		return mapper.read(bno);
	}

	@Override
	public boolean modify(YooBoardVO board) {
		log.info("글수정이 처리됩니다!" + board);
		return mapper.update(board) == 1;
	}

	@Override
	public boolean remove(Long bno) {
		log.info("글삭제 기능을 처리합니다!" + bno);
		return mapper.delete(bno) == 1;
	}

//	@Override
//	public List<BoardVO> getList() {
//		
//		log.info("글목록 조회 기능을 처리합니다!");
//		
//		
//		
//		return mapper.getList();
//	}
	@Override
	public List<YooBoardVO> getList(YooCriteria cri) {
		log.info("pageNum와 amount를 고려한 getList() 글목록 조회! : " + cri);
		return mapper.getListWithPaging(cri);
	}

	@Override
	public int getTotal(YooCriteria cri) {
		log.info("전체 데이터 숫자를 카운해서 알려줍니다!");
		return mapper.getTotalCount(cri);
	}
	
	

}
