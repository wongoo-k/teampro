package com.hk.board;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hk.board.service.ProductService;

@Controller
@RequestMapping("shop/product/*")
public class ProductController {
	
	@Inject
	ProductService productService;
	
	//1.상품 전체 목록
	@RequestMapping(value = "/categories.do") 
	public ModelAndView categories(ModelAndView mav) {
		mav.setViewName("/shop/productList");
		mav.addObject("categories", productService.listProduct());
		return mav;
}
	//2. 상품 상세 보기
	@RequestMapping("/detail/{productId}")
	public ModelAndView detail(@PathVariable("productId") int productId, ModelAndView mav) {
		mav.setViewName("/shop/productDetail");
		mav.addObject("vo", productService.detailProduct(productId));
		return mav;
	}
}
