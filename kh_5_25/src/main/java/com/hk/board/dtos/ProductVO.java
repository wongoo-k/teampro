package com.hk.board.dtos;

import org.springframework.web.multipart.MultipartFile;

public class ProductVO {
	private int productId; //상품번호
	private String productName; //상품이름
	private int productPrice; //상품가격
	private String productDesc; //상품 상세정보
	private String productUrl; //상품이미지 경로
	private MultipartFile productphoto; // 상품이미지 파일
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	public String getProductDesc() {
		return productDesc;
	}
	public void setProductDesc(String productDesc) {
		this.productDesc = productDesc;
	}
	public String getProductUrl() {
		return productUrl;
	}
	public void setProductUrl(String productUrl) {
		this.productUrl = productUrl;
	}
	public MultipartFile getProductphoto() {
		return productphoto;
	}
	public void setProductphoto(MultipartFile productphoto) {
		this.productphoto = productphoto;
	}
	@Override
	public String toString() {
		return "ProductVO [productId=" + productId + ", productName=" + productName + ", productPrice=" + productPrice
				+ ", productDesc=" + productDesc + ", productUrl=" + productUrl + ", productphoto=" + productphoto
				+ "]";
	}
	
}
