package com.pineapple.repository;

import java.util.ArrayList;
import java.util.List;

import com.pineapple.vo.Product;
import com.pineapple.vo.ProductCriteria;
import com.pineapple.vo.ProductImg;

public interface ProductRep {

	ArrayList<Product> listProduct(String col, String word);
	
	int insertProduct(Product product);

	void insertProductImg(ProductImg img);
	
	Product findUploadByUploadNo(int productNo);
	
	void updateCount(int productNo);

	public ProductImg findUploadFileByUploadFileNo(int productNo);
	
	ArrayList<ProductImg> findUploadFilesByUploadNo(int productNo);

	void deleteProduct(int productNo);

	void deleteProductImg(int fileNo);

	void updateProduct(Product product);
	
	ProductImg findUploadFileByUploadNo(int productNo);

	ArrayList<Product> kindCategorys(String kind);
	
	List<Product> listPage(ProductCriteria cri);
	
	int listCount();

}