package vn.com.t3h.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import vn.com.t3h.dao.ProductDao;
import vn.com.t3h.model.ProductModel;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class ProductDaoImpl implements ProductDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public List<ProductModel> findAll() {
        String sql = "select * from products";
        List<ProductModel> productModel = jdbcTemplate.query(sql, new RowMapper<ProductModel>() {
            @Override
            public ProductModel mapRow(ResultSet rs, int i) throws SQLException {
                System.out.println("Bắt đầu map dữ liệu dạng sql sang object java của sản phẩm thứ: " + i);
                ProductModel product = new ProductModel();
                product.setId(rs.getInt("id"));
                product.setId(rs.getInt("id"));
                product.setBookTitle(rs.getString("book_title"));
                product.setAuthor(rs.getString("author"));
                product.setPageCount(rs.getInt("page_count"));
                product.setPublisher(rs.getString("publisher"));
                product.setPublicationYear(rs.getInt("publication_year"));
                product.setGenre(rs.getString("genre"));
                product.setPrice(rs.getDouble("price"));
                product.setDiscount(rs.getDouble("discount"));
                product.setStockQuantity(rs.getInt("stock_quantity"));
                product.setDescription(rs.getString("description"));
                return product;
            }
        });

        return productModel;
    }

    @Override
    public ProductModel findProductById(Integer id) {
        String sql = "select * from products where id = " + id + ";";
        ProductModel productModel = jdbcTemplate.queryForObject(sql, BeanPropertyRowMapper.newInstance(ProductModel.class));
        return productModel;
    }

    @Override
    public int addProduct(ProductModel productModel) {
        String sql = "INSERT INTO products (book_title, author, page_count, publisher, publication_year, genre, price, discount, stock_quantity, description, image) \n" +
                "VALUES (?,?,?,?,?,?,?,?,?,?,NULL);";
//        productModel = new ProductDaoImpl().checkNull(productModel);
        int rowInserted = jdbcTemplate.update(sql,productModel.getBookTitle(),
                productModel.getAuthor(),productModel.getPageCount(),
                productModel.getPublisher(),productModel.getPublicationYear(),productModel.getGenre(),
                productModel.getPrice(),productModel.getDiscount(),
                productModel.getStockQuantity(),productModel.getDescription());
        return rowInserted;
    }

    @Override
    public int updateProduct(ProductModel productModel) {
        String sql = "update products set book_title = ?, author = ?, page_count = ?," +
                " publisher = ?, publication_year = ?, genre = ?, price = ?, discount = ?," +
                " stock_quantity = ?, description = ? where id = ?;";
        int rowUpdate = jdbcTemplate.update(sql,productModel.getBookTitle(),
                productModel.getAuthor(),productModel.getPageCount(),
                productModel.getPublisher(),productModel.getPublicationYear(),productModel.getGenre(),
                productModel.getPrice(),productModel.getDiscount(),
                productModel.getStockQuantity(),productModel.getDescription(),productModel.getId());
        return rowUpdate;
    }

    @Override
    public int deleteProduct(Integer id) {
        String sql = "delete from products where id = ?;";
        int rowDelete = jdbcTemplate.update(sql,id);
        return rowDelete;
    }

//    private ProductModel checkNull(ProductModel productModel){
//        if(productModel.getDescription() == null){
//            String descript = java.sql.Types.VARCHAR;
//            productModel.setDescription(descript);
//        }
//        return productModel;
//    }
}
