package com.hk.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.board.daos.ProductDAO;
import com.hk.board.dtos.ProductVO;

@Service
public class ProductServiceImpl implements ProductService{
	
	@Autowired
	private ProductDAO productDAO;
//	private ProductDAO productDAO2=new ProductDAOImpl();
	
	//01. 상품목록 
	@Override
	public List<ProductVO> listProduct() {
		return productDAO.listProduct();
	}

	//02. 상품상세 
	@Override
	public ProductVO detailProduct(int productId) {
		return productDAO.detailProduct(productId);
	}

}
