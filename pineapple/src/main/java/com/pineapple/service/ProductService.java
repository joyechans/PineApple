package com.pineapple.service;

import java.util.List;

import com.pineapple.vo.Product;
import com.pineapple.vo.ProductCriteria;
import com.pineapple.vo.ProductImg;

public interface ProductService {

	int insertProduct(Product product);
	
	void insertProductImg(ProductImg productImg);
	
	List<Product> listProduct(String col, String word);

	ProductImg findUploadFileByUploadFileNo(int productNo);
	
	List<ProductImg> findUploadFilesByUploadNo(int productNo);
	
	Product findUploadByUploadNo(int productNo);
	
	void updateCount(int productNo);
		
	void deleteProduct(int productNo);
	
	void deleteProductImg(int fileNo);
	
	void updateProduct(Product product);

//	MovieFile findUploadFileByUploadFileNo(int uploadFileNo);
	ProductImg findUploadFileByUploadNo(int productNo);

	List<Product> kindCategory(String kind);
	
	int listCount();	
	
	List<Product> listPage(ProductCriteria cri);	

}
