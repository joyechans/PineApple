package com.pineapple.mapper;

import java.util.HashMap;
import java.util.List;

import com.pineapple.vo.Product;
import com.pineapple.vo.ProductCriteria;
import com.pineapple.vo.ProductImg;

public interface ProductMapper {
	
	List<Product> listProduct(HashMap<String, Object> params);
	
	int insertProduct(Product product);
	
	void insertProductImg(ProductImg productImg);
	
	void updateCount(int productNo);
	
	Product findUploadByUploadNo(int productNo);
	
	ProductImg findUploadFileByUploadFileNo(int productImgNo);

	List<ProductImg> findUploadFilesByUploadNo(int productNo);

	void deleteProduct(int productNo);
	
	void deleteProductImg(int fileNo);
	
	void updateProduct(Product product);
	
	ProductImg findUploadFileByUploadNo(int productNo);
	
	List<Product> kindCategorys(HashMap<String, Object> params);	
	
	   List<Product> listPage(ProductCriteria cri);

	   int listCount();

}
