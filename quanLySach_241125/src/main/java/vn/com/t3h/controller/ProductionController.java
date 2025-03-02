package vn.com.t3h.controller;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import vn.com.t3h.model.ProductModel;
import vn.com.t3h.service.ProductService;

import java.util.List;

@Controller
public class ProductionController {

    @Autowired
    private ProductService productService;

    @GetMapping("/admin/products")
    public String products(Model model) {
        List<ProductModel> products = productService.getProducts();
        model.addAttribute("products", products);
        return "views/productManagement/products";
    }

    @RequestMapping( value = "/admin/viewProductManagement",method = RequestMethod.GET)
    public ModelAndView viewProductManagement (HttpServletRequest request){
        String idString = request.getParameter("id");
        ModelAndView modelAndView = new ModelAndView("views/productManagement/viewProductManagement");
        if(idString != null) {
            Integer id = Integer.parseInt(idString);
            ProductModel productModels = productService.findProductById(id);
            modelAndView.addObject("productModels",productModels);
            return modelAndView;
        }
        return modelAndView;
    }

    @RequestMapping(value = "/admin/products/management",method = RequestMethod.POST)
    public ModelAndView productManagement(HttpServletRequest request){
        String deleted = request.getParameter("deleted");
        ProductModel productModel = new ProductModel();

        if("true".equals(deleted)){
            productModel.setId(Integer.parseInt(request.getParameter("id")));
            productService.deleteProduct(productModel.getId());
        }
        else {
            productService.productManager(request);
        }
        return new ModelAndView("redirect:/admin/products");
    }



}
