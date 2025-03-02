package vn.com.t3h.dao;

import vn.com.t3h.model.ProductModel;

import java.util.List;

public interface ProductDao {

    List<ProductModel> findAll();

    ProductModel findProductById(Integer id);

    int addProduct (ProductModel productModel);

    int updateProduct(ProductModel productModel);

    int deleteProduct(Integer id);
}
