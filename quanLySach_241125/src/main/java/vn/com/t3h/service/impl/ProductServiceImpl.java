package vn.com.t3h.service.impl;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import vn.com.t3h.dao.ProductDao;
import vn.com.t3h.model.ProductModel;
import vn.com.t3h.service.ProductService;
import vn.com.t3h.util.MapClientToSeverUtil;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductDao productDao;

    @Override
    public List<ProductModel> getProducts() {
        return productDao.findAll();
    }

    @Override
    public ProductModel findProductById(Integer id) {
        return productDao.findProductById(id);
    }

    @Override
    public int productManager(HttpServletRequest request) {
//        ProductModel productModel = new ProductModel();
//        productModel.setId(Integer.parseInt(request.getParameter("id")));
//        productModel.setBookTitle(request.getParameter("bookTitle"));
//        productModel.setAuthor(request.getParameter("author"));
//        productModel.setPageCount(Integer.parseInt(request.getParameter("pageCount")));
//        productModel.setPublisher(request.getParameter("publisher"));
//        productModel.setPublicationYear(Integer.parseInt(request.getParameter("publicationYear")));
//        productModel.setGenre(request.getParameter("genre"));
//        productModel.setPrice(Double.parseDouble(request.getParameter("price")));
//        productModel.setDiscount(Double.parseDouble(request.getParameter("discount")));
//        productModel.setStockQuantity(Integer.parseInt(request.getParameter("stockQuantity")));
//        productModel.setDescription(request.getParameter("description"));

        ProductModel productModel = MapClientToSeverUtil.toModel(ProductModel.class,request);
        int numberRowExecute = 0;
        if( productModel.getId() != 0) numberRowExecute= productDao.updateProduct(productModel);
        else numberRowExecute = productDao.addProduct(productModel);
        return numberRowExecute;
    }

    @Override
    public int deleteProduct(Integer id) {
        return productDao.deleteProduct(id);
    }
}
