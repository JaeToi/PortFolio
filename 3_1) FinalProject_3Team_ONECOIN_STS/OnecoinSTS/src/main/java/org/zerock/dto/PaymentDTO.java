package org.zerock.dto;

import java.util.Date;

import lombok.Data;

@Data
public class PaymentDTO {
	
	public String imp_uid;
	public String merchant_uid;
	public int paid_amount;
	public String apply_num;
	public Date paid_at;
}
