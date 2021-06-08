package com.hk.board.daos;

import java.util.List;

import com.hk.board.dtos.ProductVO;

public interface ProductDAO {


	ProductVO detailProduct(int productId);

	List<ProductVO> listProduct();

}
