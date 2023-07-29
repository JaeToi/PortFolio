package org.zerock.service;


import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.stereotype.Service;
import org.zerock.dto.PaymentDTO;
import org.zerock.repository.PaymentRepository;


@Service("paymentService")
public class PaymentService {

	@Autowired
	private PaymentRepository paymentRepository;
	

	public int insertPaymentSuccess(PaymentDTO vo) {
		return paymentRepository.insertPaymentSuccess(vo);
	}
}
