package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.YooCriteria;
import org.zerock.domain.YooReplyVO;

public interface YooReplyMapper {

	public int insert(YooReplyVO vo);	// 기존 게시글에 댓글을 추가하는 insert() 메서드 선언
	
	public YooReplyVO read(Long rno);	// 특정 댓글의 내용을 읽어주는 read() 메서드 선언
	
	public int delete(Long rno);	// 특정 댓글의 내용을 삭제 처리하는 delete() 메서드 선언
	
	public int update(YooReplyVO reply);	// 특정 댓글의 내용을 수정 처리하는 update() 메서드 선언
	
	// MyBatis는 두 개 이상의 데이터를 파라미터로 전달하기 위해
	// 1) 별도의 객체로 구성하거나,
	// 2) Map을 이용하는 방식,
	// 3) @Param을 이용해서 이름을 사용하는 방식을 활용합니다.
	
	public List<YooReplyVO> getListWithPaging(
			@Param("cri") YooCriteria cri,
			@Param("bno") Long bno);
		
}
