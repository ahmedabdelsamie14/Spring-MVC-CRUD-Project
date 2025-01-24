package com.adminPanel.app.model;


import lombok.Getter;
import lombok.Setter;
import javax.persistence.*;
import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Getter
@Setter
@Entity
@Table(name = "product")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(nullable = false)
    @NotBlank(message = "Name Cannot Be Empty")
    private String name;

    @OneToOne(mappedBy = "product", cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.LAZY)
    @Valid
    @NotNull(message = "Product details are required")
    private ProductDetails productDetails;


    public void setProductDetails(ProductDetails productDetails) {
        this.productDetails = productDetails;
        productDetails.setProduct(this);
    }
}