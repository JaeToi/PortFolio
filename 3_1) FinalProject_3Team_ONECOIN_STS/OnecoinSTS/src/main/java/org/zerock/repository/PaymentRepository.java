package org.zerock.repository;

import java.io.Reader;


import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Repository;
import org.zerock.dto.PaymentDTO;
import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class PaymentRepository {
	
	private final SqlSession sql;

	public int insertPaymentSuccess(PaymentDTO vo) {

		return sql.insert("PayMent.payinsert", vo);
	}
	
	

}
	
	
	
	
	
	
	
	
	
