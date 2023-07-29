package org.zerock.productdeailsController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.YooBoardVO;
import org.zerock.domain.YooCriteria;
import org.zerock.domain.YooPageDTO;
import org.zerock.dto.PaymentDTO;
import org.zerock.service.PaymentService;
import org.zerock.service.YooBoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/productdetails/*")
@AllArgsConstructor
public class productdeailsController {

	@Autowired
	private YooBoardService service;
	
	@Autowired
	private PaymentService paymentService; 
	
	@GetMapping("/productDetails")
	public void list(YooCriteria cri, Model model) {
		log.info("list 처리가 이루어집니다!" + cri);
		model.addAttribute("yoolist", service.getList(cri));

		int total = service.getTotal(cri);
		log.info("전체 데이터 수량 = " + total);
		model.addAttribute("pageMaker", new YooPageDTO(cri, total));
	}

	@GetMapping("/yooregister")
	public void register() {
		
	}

	@PostMapping("/yooregister")
	public String register(YooBoardVO board, RedirectAttributes rttr) {
		log.info("글등록 처리를 합니다!" + board);
		service.register(board);
		// addFlashAttribute() 메서드는 일회성으로만 데이터를 전달하기 때문에
		// addFlashAttribute() 메서드로 보관된 데이터는 단 한 번만 사용할 수 있게
		// 보관됩니다.
		rttr.addFlashAttribute("result2", board.getBno());
		return "redirect:/productdetails/productDetails/#detail-qna-box";
	}
	
	@GetMapping({"/yooget", "/yoomodify"})
	public void get(@RequestParam("bno") Long bno, @ModelAttribute("cri") YooCriteria cri, Model model) {
		log.info("/yooget or yoomodify");
		model.addAttribute("yooboard", service.get(bno));
	}
	
	@PostMapping("/yoomodify")
	public String modify(YooBoardVO board, @ModelAttribute("cri") YooCriteria cri, RedirectAttributes rttr) {
		log.info("글수정 처리가 되었습니다! ==> " + board);
		
		if(service.modify(board)) {
			rttr.addFlashAttribute("result2", "success");
		}
		
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		
		return "redirect:/productdetails/productDetails/#detail-qna-box";
	}
	
	@PostMapping("/yooremove")
	public String remove(@RequestParam("bno") Long bno, @ModelAttribute("cri") YooCriteria cri, RedirectAttributes rttr) {
		log.info("글삭제 처리가 되었습니다! ==> " + bno);
		
		if(service.remove(bno)) {
			rttr.addFlashAttribute("result2", "success");
		}
		
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		
		return "redirect:/productdetails/productDetails/#detail-qna-box";
	}
	
	
	
	// 결제 메서드
	@PostMapping("/paymentProcess.do")
	@ResponseBody
	public int paymentDone(@RequestBody PaymentDTO vo) {
		return paymentService.insertPaymentSuccess(vo);
	}
	
	
}
