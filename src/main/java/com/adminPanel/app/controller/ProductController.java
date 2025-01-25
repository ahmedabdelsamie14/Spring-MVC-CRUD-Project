package com.adminPanel.app.controller;

import com.adminPanel.app.dao.ProductDAO;
import com.adminPanel.app.model.Product;
import com.adminPanel.app.model.ProductDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
@RequestMapping("/")
public class ProductController {

    @Autowired
    private ProductDAO productDAO;

    @GetMapping
    public String getAllProducts(Model model) {
        model.addAttribute("productsList", productDAO.getAllProducts());
        return "homePage";
    }

    @GetMapping("/add")
    public String showAddProductForm(Model model) {
        Product product = new Product();
        product.setProductDetails(new ProductDetails());
        model.addAttribute("product", product);
        return "addProductForm";
    }

    @PostMapping("/add")
    public String saveProduct(@Valid @ModelAttribute("product") Product product, BindingResult result, Model model) {
        if (result.hasErrors()) {
            System.out.println("Validation errors: " + result.getAllErrors());
            model.addAttribute("product", product);
            return "addProductForm";
        }

        ProductDetails details = product.getProductDetails();
        if (details != null) {
            details.setProduct(product);
        }

        productDAO.saveProduct(product);
        return "redirect:/";
    }

    @GetMapping("/view/{id}")
    public String viewProductDetails(@PathVariable int id, Model model) {
        model.addAttribute("product", productDAO.getProductById(id));
        return "viewDetailsPage";
    }

    @GetMapping("/update/{id}")
    public String showUpdateForm(@PathVariable int id, Model model) {
        Product product = productDAO.getProductById(id);

        if (product.getProductDetails() == null) {
            product.setProductDetails(new ProductDetails());
        }

        model.addAttribute("product", product);
        return "updateDetailsForm";
    }

    @PostMapping("/update")
    public String updateProduct(@Valid @ModelAttribute Product product, BindingResult result, Model model) {
        if (result.hasErrors()) {
            model.addAttribute("product", product);
            return "updateDetailsForm";
        }

        Product existingProduct = productDAO.getProductById(product.getId());
        if (existingProduct != null) {
            existingProduct.setName(product.getName());

            ProductDetails existingDetails = existingProduct.getProductDetails();
            ProductDetails updatedDetails = product.getProductDetails();

            if (existingDetails != null && updatedDetails != null) {
                existingDetails.setExpirationDate(updatedDetails.getExpirationDate());
                existingDetails.setManufacturer(updatedDetails.getManufacturer());
                existingDetails.setPrice(updatedDetails.getPrice());
                existingDetails.setAvailable(updatedDetails.getAvailable());
            }

            productDAO.saveProduct(existingProduct);
        }
        return "redirect:/";
    }

    @GetMapping("/delete/{id}")
    public String deleteProduct(@PathVariable int id) {
        productDAO.deleteProduct(id);
        return "redirect:/";
    }
}