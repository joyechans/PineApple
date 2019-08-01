package com.pineapple.service;

import java.util.List;

import com.pineapple.repository.ProductRep;
import com.pineapple.vo.Product;
import com.pineapple.vo.ProductCriteria;
import com.pineapple.vo.ProductImg;

public class ProductServiceImpl implements ProductService {


	private ProductRep productRep;

	public ProductRep getProductRep() {
		return productRep;
	}

	public void setProductRep(ProductRep productRep) {
		this.productRep = productRep;
	}

	@Override
	public List<Product> listProduct(String col, String word) {
		
		List<Product> product = productRep.listProduct(col, word);
		
		return product;
	}

	@Override
	public int insertProduct(Product product) {
		int newProductNo = productRep.insertProduct(product);
		for (ProductImg img : product.getImgs()) {
			img.setProductNo(newProductNo);
			productRep.insertProductImg(img);
		}	
		return newProductNo;
			
	}
	
	@Override
	public void insertProductImg(ProductImg productImg) {
		productRep.insertProductImg(productImg);		
	}
	
	@Override
	public ProductImg findUploadFileByUploadFileNo(int productImgNo) {
		
		ProductImg imgs = productRep.findUploadFileByUploadFileNo(productImgNo);		
		return imgs;
	}
	
	@Override
	public List<ProductImg> findUploadFilesByUploadNo(int productNo) {
		
		List<ProductImg> imgs = productRep.findUploadFilesByUploadNo(productNo);
		
		return imgs;
	}


	@Override
	public Product findUploadByUploadNo(int productNo) {
		
		Product product = productRep.findUploadByUploadNo(productNo);
		return product;
		
	}
	
	@Override
	public void updateCount(int productNo) {
	
		productRep.updateCount(productNo);
	
	}

//
//	@Override
//	public MovieFile findUploadFileByUploadFileNo(int uploadFileNo) {
//		
//		MovieFile file = productRep.selectUploadFileByUploadFileNo(uploadFileNo);
//	
//		return file;
//	}

	@Override
	public void deleteProduct(int productNo) {
		
		productRep.deleteProduct(productNo);
	}
	

	@Override
	public void deleteProductImg(int fileNo) {
		
		productRep.deleteProductImg(fileNo);
		
	}

	@Override
	public void updateProduct(Product product) {
		
		productRep.updateProduct(product);
		
	}

	@Override
	public ProductImg findUploadFileByUploadNo(int productNo) {
		ProductImg img = productRep.findUploadFileByUploadNo(productNo);
		return img;
	}
	
	@Override
	public List<Product> kindCategory(String kind) {
		List<Product> product = productRep.kindCategorys(kind);
		return product;
	}	
	
	@Override
	public List<Product> listPage(ProductCriteria cri) {
		
		return productRep.listPage(cri);
	}	

	   @Override
	   public int listCount() {
	      // TODO Auto-generated method stub
	      return productRep.listCount();
	   }	

}
