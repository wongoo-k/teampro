package com.hk.board.service;

import java.util.List;

import com.hk.board.dtos.ProductVO;

public interface ProductService {


	ProductVO detailProduct(int productId);

	List<ProductVO> listProduct();

}
