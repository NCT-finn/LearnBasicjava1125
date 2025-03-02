package vn.com.t3h.service;

import jakarta.servlet.http.HttpServletRequest;
import vn.com.t3h.model.ProductModel;

import java.util.List;

public interface ProductService {

    List<ProductModel> getProducts();

    ProductModel findProductById(Integer id);

    int productManager (HttpServletRequest request);

    int deleteProduct(Integer id);
}
