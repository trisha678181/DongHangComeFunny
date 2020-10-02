//package com.DongHang_ComeFunny.www.controller.admin;
//
//import java.util.HashMap;
//import java.util.List;
//import java.util.Map;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.servlet.ModelAndView;
//
//import com.DongHang_ComeFunny.www.model.service.admin.AdminSalesBoardService;
//import com.DongHang_ComeFunny.www.model.vo.Order;
//
//@Controller
//@RequestMapping("/admin/payment")
//public class AdminPaymentController {
//
//	@Autowired
//	AdminPaymentService adminPaymentService;
//	
//	@RequestMapping("/list")
//	public ModelAndView viewPaymentList (	String searchKinds,
//											String searchText,
//											@RequestParam(required = false, defaultValue = "1")int cPage) {
//		
//		ModelAndView mav = new ModelAndView();
//		int cntPerPage = 10;
//		
//		Map<String,Object> searchPayment = new HashMap<>();
//		
//		searchPayment.put("searchKinds", searchKinds);
//		searchPayment.put("searchText", searchText);
//		Map<String,Object> paymentList = adminPaymentService.viewSalesBoardList(cPage, cntPerPage, searchPayment);
//
//		mav.addObject("paging",paymentList.get("paging"));
//		mav.addObject("doBoardData", paymentList);
//		mav.addObject("searchKinds", searchKinds);
//		mav.addObject("searchText", searchText);
//		mav.setViewName("admin/payment/list");
//		return mav;
//	}
//	
//	@RequestMapping("/view")
//	public ModelAndView viewPayment(int pNo) {
//		
//		ModelAndView mav = new ModelAndView();
//		
//		List<Payment> payment = adminPaymentService.viewPayment(pNo);
//
//		mav.addObject("Order", Order);
//		mav.setViewName("admin/boards/salesBoard/view");
//		return mav;
//	}
//	
//	
//
//}
